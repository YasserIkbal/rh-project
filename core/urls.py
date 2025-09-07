from django.urls import path
from . import views

app_name = 'core'

urlpatterns = [
    path('', views.home, name='home'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('stock/', views.stock_movements, name='stock_movements'),
    path('products/', views.product_list, name='product_list'),
    path('products/add/', views.product_add, name='product_add'),
    path('products/<int:pk>/edit/', views.product_edit, name='product_edit'),
    path('products/<int:pk>/delete/', views.product_delete, name='product_delete'),
    path('orders/', views.order_list, name='order_list'),
    path('orders/<int:pk>/', views.order_detail, name='order_detail'),
    path('orders/<int:pk>/edit/', views.order_edit, name='order_edit'),
    path('orders/<int:pk>/delete/', views.order_delete, name='order_delete'),
    path('orders/create/', views.order_create, name='order_create'),
    path('orders/<int:pk>/pdf/', views.export_order_pdf, name='export_order_pdf'),
    path('orders/<int:pk>/excel/', views.export_order_excel, name='export_order_excel'),
    path('stock/pdf/', views.export_stock_pdf, name='export_stock_pdf'),
    path('stock/excel/', views.export_stock_excel, name='export_stock_excel'),
    path('users/', views.user_management, name='user_management'),
    path('users/<int:user_id>/toggle-admin/', views.toggle_admin, name='toggle_admin'),
]