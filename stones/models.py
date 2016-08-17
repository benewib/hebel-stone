from django.db import models
from PIL import Image

# Create your models here.

class Kategori(models.Model):
    """docstring for Kategori"""
    nama_kategori = models.CharField(max_length=30)
    deskripsi = models.CharField(max_length=100)

class Stone(models.Model):
    """docstring for Stone"""
    kode = models.CharField(max_length=30)
    deskripsi = models.CharField(max_length=200)
    cover_stone = models.ImageField(upload_to = '\images')
    kategori = models.ForeignKey(Kategori)

    def __str__(self):
        return self.kode

class carosel(models.Model):
    """docstring for Showroom(models.Model)"""
    stone = models.ManyToManyField(Stone)
    deskripsi = models.CharField(max_length=60)


class Admin:
    pass
