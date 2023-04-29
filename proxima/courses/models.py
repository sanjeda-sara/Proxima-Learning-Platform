from django.db import models


# Create your models here.
class Courses(models.Model):
    c_id = models.IntegerField()
    c_name = models.CharField(max_length=200)
    c_title = models.CharField(max_length=100)
    c_des = models.TextField()

    def __str__(self):
        return self.c_name


class FreeCourse_info(models.Model):
    c_id = models.ForeignKey(Courses,on_delete=models.CASCADE)
    c_vlink = models.CharField(max_length=200)
    c_slink = models.CharField(max_length=200)

    def __str__(self):
        return f'{self.c_id.c_name} links'


class PaidCourse_info(models.Model):
    c_id = models.ForeignKey(Courses, on_delete=models.CASCADE)
    c_fee = models.IntegerField()
    c_lang = models.CharField(max_length=20)
    c_duration = models.IntegerField()

    def __str__(self):
        return f'{self.c_id.c_name} paid'


class PaidSec(models.Model):
    c_id = models.ForeignKey(Courses, on_delete=models.CASCADE)
    sec = models.IntegerField()
    time = models.TextField()

    def __str__(self):
        return f'{self.c_id.c_name} time'