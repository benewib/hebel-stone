from django.db import models
import os


# Create your models here.
def get_file_path(instance, filename):
        ext = Kategori.objects.get(id=instance.kategori.id)
        n = ext.name
        n = n.lower().replace(" ", "_")
        base_path = 'stones/%s/' % n
        return os.path.join(base_path, filename)

class Kategori(models.Model):
    """docstring for Kategori"""
    name = models.CharField(max_length=30)

    def __str__(self):
        return self.name



class Stone(models.Model):
    """docstring for Stone"""
    kode = models.CharField(max_length=30)
    deskripsi = models.CharField(max_length=200)
    size = models.CharField(max_length=13, null=True)
    harga = models.DecimalField(max_digits=6, decimal_places=0, null=True, blank=True)
    cover_stone = models.ImageField(upload_to=get_file_path, max_length=256)
    depan = models.BooleanField(default=False)
    kategori = models.ForeignKey(Kategori, on_delete=models.CASCADE)

    def __str__(self):
        return self.kode
