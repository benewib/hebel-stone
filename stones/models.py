from django.db import models
from PIL import Image

# Create your models here.

class Kategori(models.Model):
    """docstring for Kategori"""
    nama_kategori = models.CharField(max_length=30)
    deskripsi = models.CharField(max_length=100)

    def __str__(self):
        return self.nama_kategori

    class Admin:
        list_display = ('nama_kategori', 'deskripsi')
#        list_filter = ('publisher', 'publication_date')
#        ordering = ('-publication_date',)
        search_fields = ('nama_kategori',)

class Stone(models.Model):
    """docstring for Stone"""
    kode = models.CharField(max_length=30)
    deskripsi = models.CharField(max_length=200)
    size = models.CharField(max_length=13, null=True)
    harga = models.DecimalField(max_digits=6, decimal_places=0, null=True)
    cover_stone = models.ImageField(upload_to = '\images')
    kategori = models.ForeignKey(Kategori)

    def __str__(self):
        return self.kode

    class Admin:
        """docstring for Admin:"""
        list_display = ('kode', 'deskripsi', 'kategori')
        list_filter = ('kode', 'kategori')
        ordering = ('-cover_stone',)
        search_fields = ('kategori',)



class carosel(models.Model):
    """docstring for Showroom(models.Model)"""
    stone = models.ManyToManyField(Stone)
    deskripsi = models.CharField(max_length=60)

    class Admin:
        """docstring for Admin:"""
        pass
