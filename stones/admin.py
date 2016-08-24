from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import Kategori
from .models import Stone
from .models import carosel

admin.site.register(Kategori)
admin.site.register(Stone)
admin.site.register(carosel)
