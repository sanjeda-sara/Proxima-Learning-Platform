from django.db import models


# Create your models here.
class Apply_emp(models.Model):
    ename = models.CharField(max_length=100)
    efname = models.CharField(max_length=100)
    elname = models.CharField(max_length=100)
    eemail = models.EmailField(max_length=50)
    econtact = models.CharField(max_length=12)
    eparadd = models.CharField(max_length=200)
    epreadd = models.CharField(max_length=200)
    eoption = models.CharField(max_length=100)


    def __str__(self):
        return self.ename

class Service_order(models.Model):
    stitle=models.CharField(max_length=500)
    sdes = models.TextField()
    sreq = models.TextField()
    sdel = models.DateTimeField()
    sadd = models.TextField()



    def __str__(self):
        return self.stitle