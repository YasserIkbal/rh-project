from django.contrib import admin, messages
from .models import Product, Order, OrderItem


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['name', 'price', 'quantity', 'is_in_stock', 'created_at']
    list_filter = ['created_at', 'updated_at']
    search_fields = ['name', 'description']
    readonly_fields = ['created_at', 'updated_at']


class OrderItemInline(admin.TabularInline):
    model = OrderItem
    extra = 0
    readonly_fields = ['subtotal']


from django.utils.translation import gettext_lazy as _

@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = ['id', 'client', 'status', 'total', 'order_date']
    list_filter = ['status', 'order_date']
    search_fields = ['client__username', 'client__email']
    readonly_fields = ['created_at', 'updated_at', 'total']
    inlines = [OrderItemInline]
    date_hierarchy = 'order_date'
    list_per_page = 20
    
    def get_actions(self, request):
        actions = super().get_actions(request)
        # Customize the delete selected action
        if 'delete_selected' in actions:
            actions['delete_selected'] = (
                self.delete_selected_action,
                'delete_selected',
                _('Supprimer les commandes sélectionnées')
            )
        return actions
    
    def delete_selected_action(self, modeladmin, request, queryset):
        from django.contrib import messages
        from django.contrib.admin.actions import delete_selected
        from django.contrib.admin.utils import get_deleted_objects
        from django.db import router
        
        # Get the model's name for the message
        opts = self.model._meta
        using = router.db_for_write(self.model)
        
        # Get the objects that will be deleted
        deleted_objects, model_count, perms_needed, protected = get_deleted_objects(
            queryset, request.user, self.admin_site, using)
            
        # Show confirmation page with custom message
        if request.POST.get('post') and not protected:
            n = queryset.count()
            if n:
                for obj in queryset:
                    obj_display = str(obj)
                    self.log_deletion(request, obj, obj_display)
                queryset.delete()
                self.message_user(request, _("La commande a été supprimée avec succès." if n == 1 else 
                                          "%s commandes ont été supprimées avec succès." % n), 
                                messages.SUCCESS)
            return None
            
        # Show confirmation template
        return delete_selected(self, request, queryset)
    
    delete_selected_action.short_description = _("Supprimer les commandes sélectionnées")


@admin.register(OrderItem)
class OrderItemAdmin(admin.ModelAdmin):
    list_display = ['order', 'product', 'quantity', 'price', 'subtotal']
    list_filter = ['order__status', 'product']
    readonly_fields = ['subtotal']