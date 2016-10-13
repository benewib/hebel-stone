from django.shortcuts import render
from .models import Stone, Kategori



# Create your views here.
def index(request):
    prods = Stone.objects.filter(depan=True)
    return render(request, 'stones/index.html', {'prods' : prods})


def detail(request):
    stones_list = Stone.objects.all().order_by('kategori')
    return render(request, 'stones/detail.html', {'stones_list' : stones_list})
