from django.urls import path
from . import views

urlpatterns = [
    path('courses', views.courses, name='courses'),
    path('free_course', views.free_course, name='free_course'),
    path('paid_course', views.paid_course, name='paid_course')
]
