from django.db import models
from django.contrib.auth import get_user_model
from django.core.validators import MinValueValidator
from django.db.models import Sum, F
from decimal import Decimal

User = get_user_model()


class Product(models.Model):
    name = models.CharField(max_length=200, verbose_name="Nom")
    description = models.TextField(verbose_name="Description")
    quantity = models.IntegerField(validators=[MinValueValidator(0)], verbose_name="Quantité")
    price = models.DecimalField(max_digits=10, decimal_places=2, validators=[MinValueValidator(Decimal('0.01'))], verbose_name="Prix")
    image = models.ImageField(upload_to='products/', blank=True, null=True, verbose_name="Image")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = "Produit"
        verbose_name_plural = "Produits"
        ordering = ['-created_at']
    
    def __str__(self):
        return self.name
    
    @property
    def is_in_stock(self):
        return self.quantity > 0
    
    def save(self, *args, **kwargs):
        # Create stock movement when a new product is added
        is_new = self.pk is None
        super().save(*args, **kwargs)
        
        if is_new and self.quantity > 0:
            StockMovement.objects.create(
                product=self,
                movement_type='in',
                quantity=self.quantity,
                reason=f'Nouveau produit ajouté',
                source='Stock initial',
                destination='Stock'
            )


class Order(models.Model):
    STATUS_CHOICES = [
        ('draft', 'Brouillon'),
        ('confirmed', 'Confirmé'),
        ('shipped', 'Expédié'),
    ]
    
    client = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="Client")
    order_date = models.DateTimeField(auto_now_add=True, verbose_name="Date de commande")
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='draft', verbose_name="Statut")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = "Commande"
        verbose_name_plural = "Commandes"
        ordering = ['-order_date']
    
    def __str__(self):
        return f"Commande #{self.id} - {self.client.username}"
    
    @property
    def total(self):
        # Calculer le total en multipliant quantité par prix pour chaque article
        total = self.items.aggregate(
            total=Sum(F('quantity') * F('price'))
        )['total']
        return total if total is not None else 0
    
    @property
    def total_items(self):
        return sum(item.quantity for item in self.items.all())


class StockMovement(models.Model):
    MOVEMENT_TYPES = [
        ('in', 'Entrée'),
        ('out', 'Sortie'),
        ('transfer', 'Transfert'),
    ]
    
    product = models.ForeignKey(Product, on_delete=models.CASCADE, verbose_name="Produit")
    movement_type = models.CharField(max_length=10, choices=MOVEMENT_TYPES, verbose_name="Type")
    quantity = models.IntegerField(verbose_name="Quantité")
    reason = models.CharField(max_length=200, verbose_name="Motif")
    source = models.CharField(max_length=200, blank=True, null=True, verbose_name="Source")
    destination = models.CharField(max_length=200, blank=True, null=True, verbose_name="Destination")
    order = models.ForeignKey('Order', on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Commande")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Date")
    
    class Meta:
        verbose_name = "Mouvement de Stock"
        verbose_name_plural = "Mouvements de Stock"
        ordering = ['-created_at']
    
    def __str__(self):
        return f"{self.get_movement_type_display()} - {self.product.name} ({self.quantity})"
    
    @property
    def movement_type_display(self):
        return dict(self.MOVEMENT_TYPES)[self.movement_type]


class OrderItem(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE, related_name='items', verbose_name="Commande")
    product = models.ForeignKey(Product, on_delete=models.CASCADE, verbose_name="Produit")
    quantity = models.IntegerField(validators=[MinValueValidator(1)], verbose_name="Quantité")
    price = models.DecimalField(max_digits=10, decimal_places=2, verbose_name="Prix unitaire")
    
    class Meta:
        verbose_name = "Article de commande"
        verbose_name_plural = "Articles de commande"
        unique_together = ['order', 'product']
    
    def __str__(self):
        return f"{self.product.name} x {self.quantity}"
    
    def subtotal(self):
        if self.quantity is None or self.price is None:
            return 0
        return self.quantity * self.price
    
    def save(self, *args, **kwargs):
        # Track stock movements for all order-related changes
        is_new = self.pk is None
        old_item = None
        
        if not is_new:
            old_item = OrderItem.objects.get(pk=self.pk)
        
        super().save(*args, **kwargs)
        
        # Create stock movement if order is confirmed
        if self.order.status == 'confirmed':
            if is_new:
                # New item added to confirmed order
                self.product.quantity -= self.quantity
                self.product.save()
                
                StockMovement.objects.create(
                    product=self.product,
                    movement_type='out',
                    quantity=self.quantity,
                    reason=f'Commande #{self.order.id}',
                    source='Stock',
                    destination='Client',
                    order=self.order
                )
            elif old_item:
                # Item updated in confirmed order
                quantity_diff = old_item.quantity - self.quantity
                if quantity_diff != 0:
                    self.product.quantity += quantity_diff
                    self.product.save()
                    
                    movement_type = 'in' if quantity_diff > 0 else 'out'
                    StockMovement.objects.create(
                        product=self.product,
                        movement_type=movement_type,
                        quantity=abs(quantity_diff),
                        reason=f'Modification commande #{self.order.id}',
                        source='Stock' if quantity_diff > 0 else 'Client',
                        destination='Client' if quantity_diff > 0 else 'Stock',
                        order=self.order
                    )
        
    def delete(self, *args, **kwargs):
        try:
            # Only update stock if the product exists and order is confirmed
            if self.order.status == 'confirmed' and self.product:
                self.product.quantity += self.quantity
                self.product.save()
                
                StockMovement.objects.create(
                    product=self.product,
                    movement_type='in',
                    quantity=self.quantity,
                    reason=f'Suppression de commande #{self.order.id}',
                    source='Client',
                    destination='Stock',
                    order=self.order
                )
            super().delete(*args, **kwargs)
        except Exception as e:
            # Log the error but don't break the deletion process
            print(f"Error during OrderItem delete: {str(e)}")
            super().delete(*args, **kwargs)