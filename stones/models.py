from django.db import models
from PIL import Image

# Create your models here.

class Kategori(models.Model):
    """docstring for Kategori"""
    nama_kategori = models.CharField(max_length=30)
    deskripsi = models.CharField(max_length=100)

    def __str__(self):
        return self.nama_kategori



class Stone(models.Model):
    """docstring for Stone"""
    kode = models.CharField(max_length=30)
    deskripsi = models.CharField(max_length=200)
    size = models.CharField(max_length=13, null=True)
    harga = models.DecimalField(max_digits=6, decimal_places=0, null=True)
    cover_stone = models.ImageField(upload_to = 'stones')
    depan = models.BooleanField(default=False)
    kategori = models.ForeignKey(Kategori, on_delete=models.CASCADE)

    def __str__(self):
        return self.kode
