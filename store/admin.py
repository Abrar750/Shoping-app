from django.contrib import admin
from store.models.category import Category
from store.models.product import Product
from store.models.customeer import Customer
from store.models.contact import Contact
from store.models.orders import Order
# Register your models here.

class Pro(admin.ModelAdmin):
    list_display = ['name','price','desc','category','images']

class Cat(admin.ModelAdmin):
    list_display = ['name']

class Cus(admin.ModelAdmin):
    list_display = ['name','email','password','phone','gender']

class Con(admin.ModelAdmin):
    list_display = ['name','email','subject','desc']

class Ord(admin.ModelAdmin):
    list_display = ['product','customer','quantity','price','date']

admin.site.register(Product,Pro)
admin.site.register(Category,Cat)
admin.site.register(Customer,Cus)
admin.site.register(Contact,Con)
admin.site.register(Order,Ord)
