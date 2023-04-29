from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path('register', views.register, name='register'),
    path('signin', views.signin, name='signin'),
    path('logout', views.logout, name='logout'),
    path('apply_employee', views.apply_employee, name='apply_employee'),
    path('reset_password/', auth_views.PasswordResetView.as_view(template_name="reset_password.html"),
         name="reset_password"),
    path('reset_password_sent/', auth_views.PasswordResetDoneView.as_view(template_name="passressent.html"),
         name="password_reset_done"),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(), name="password_reset_confirm"),
    path('reset_password_complete/', auth_views.PasswordResetCompleteView.as_view(template_name="passresdone.html"),
         name="password_reset_complete"),
    path('profile', views.profile,  name='profile'),
    path('service_order', views.service_order, name='service_order'),
    path('place_order', views.place_order, name='place_order')
]
