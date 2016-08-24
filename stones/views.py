from django.shortcuts import render
from .models import Stone


# Create your views here.
def index(request):
    kabeh = Stone.objects.all()
    semua = {'kabeh': kabeh}
    return render(request, 'stones/index.html', semua)
