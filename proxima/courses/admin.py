from django.contrib import admin
from .models import Courses,FreeCourse_info,PaidCourse_info,PaidSec

# Register your models here.

admin.site.register(Courses)
admin.site.register(FreeCourse_info)
admin.site.register(PaidCourse_info)
admin.site.register(PaidSec)


