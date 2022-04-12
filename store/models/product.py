from store.models.category import Category
from django.db import models


class Product(models.Model):
    name = models.CharField(max_length=100)
    price = models.IntegerField(default=0)
    category = models.ForeignKey(Category,on_delete=models.CASCADE,default=1)
    desc = models.CharField(max_length=100)
    images = models.ImageField(upload_to = "static/img/")


    def get_all_product_by_email_id(category_id):
        if category_id:
            return Product.objects.filter(category = category_id)
        else:
            return Product.objects.all()


    @staticmethod
    def get_product_by_id(ids):
        return Product.objects.filter(id__in = ids)