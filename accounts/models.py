from django.contrib.auth.models import AbstractUser
from django.db import models
from django.core.exceptions import ValidationError


class User(AbstractUser):
    is_admin = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        swappable = 'AUTH_USER_MODEL'
    
    def clean(self):
        # Gestion des permissions pour les superusers
        if self.is_superuser:
            self.is_admin = True
            self.is_staff = True
        else:
            # Pour les utilisateurs normaux, on laisse is_admin inchangé
            self.is_staff = False
    
    def save(self, *args, **kwargs):
        self.clean()
        super().save(*args, **kwargs)
    
    def is_admin_user(self):
        """Retourne True si l'utilisateur est un administrateur"""
        return self.is_admin
    
    def __str__(self):
        return self.username