from django.db import models


# Create your models here.

class Member(models.Model):
    name = models.CharField(max_length=200)
    img = models.ImageField(upload_to='img/team')
    desc = models.TextField()



