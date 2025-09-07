from django.contrib.auth.models import User as DjangoUser
from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import User

@receiver(post_save, sender=User)
def set_admin_status(sender, instance, created, **kwargs):
    # Vérifier si c'est un superutilisateur nouvellement créé
    if created and instance.is_superuser:
        instance.is_admin = True
        instance.save()
