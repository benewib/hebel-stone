from django.shortcuts import render
from .models import Stone, Kategori



# Create your views here.
def index(request):
    prods = Stone.objects.filter(depan=True)
    return render(request, 'stones/index.html', {'prods' : prods})


def detail(request):
    kates = Kategori.objects.all()
    semuas = Stone.objects.all()
    return render(request, 'stones/detail.html', {'kates' : kates, 'semuas' : semuas})
