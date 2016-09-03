from django.shortcuts import render
from .models import Stone



# Create your views here.
def index(request):
    prods = Stone.objects.all()
    return render(request, 'stones/index.html',{'prods' : prods})

def detail(request):
    return render(request, 'stones/produk.html', ())
