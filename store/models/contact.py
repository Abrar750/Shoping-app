from django.db import models


class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    subject = models.CharField(max_length=100)
    desc = models.CharField(max_length=200)

    class Meta:
        db_table = "Contact"