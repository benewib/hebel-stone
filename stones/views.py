from django.shortcuts import render
from .models import Stone, Kategori
import uuid



# Create your views here.
def index(request):
    prods = Stone.objects.filter(depan=True)
    return render(request, 'stones/index.html', {'prods' : prods})


def detail(request):
    semuas = Stone.objects.all()
    return render(request, 'stones/detail.html', {'semuas' : semuas})

    
