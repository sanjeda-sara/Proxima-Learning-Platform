from django.db import models


# Create your models here.
class Cus_Contact(models.Model):
    cus_name = models.CharField(max_length=100)
    cus_email = models.EmailField(max_length=50)
    cus_sub = models.CharField(max_length=200)
    cus_sms = models.TextField()

    def __str__(self):
        return self.cus_name
