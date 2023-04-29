from django.db import models


# Create your models here.
class Services(models.Model):
    s_id = models.IntegerField()
    s_name = models.CharField(max_length=200)
    c_des = models.TextField()

    def __str__(self):
        return self.s_name
