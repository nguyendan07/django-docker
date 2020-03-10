from django.urls import path
from django.contrib.auth import views as auth_views
from django.views.generic import TemplateView
from . import views

urlpatterns = [
    path('', views.image_upload, name="upload"),
    path('healthz', views.healthz, name='healthz'),
]
