from django.db import models

class Customer(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    password = models.CharField(max_length=100)
    phone = models.IntegerField()
    gender = models.CharField(max_length=100)

    def isExists(email_id):
        if email_id:
            return Customer.objects.filter(email = email_id)
        else:
            return False

    def get_email_by_id(email_id):
        try:
            return Customer.objects.get(email = email_id)
        except:
            return False