from email.policy import default
from pyexpat import model
from django.db import models
from store.models.product import Product
from store.models.customeer import Customer
import datetime

class Order(models.Model):
    product = models.ForeignKey(Product,on_delete=models.CASCADE)
    customer = models.ForeignKey(Customer,on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
    address = models.CharField(max_length=100,default="" ,blank=True)
    phone = models.CharField(max_length=12 , default="" ,blank=True)
    price = models.IntegerField()
    date = models.DateField(default=datetime.datetime.today)

    def placeoder(self):
        self.save()