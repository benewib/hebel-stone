from django.contrib import admin

# Register your models here.
from .models import Kategori, Stone




class KategoriAdmin(admin.ModelAdmin):
    list_display = ('name',)

class StoneAdmin(admin.ModelAdmin):
    fields = ('kode', 'deskripsi', 'size','harga', 'cover_stone', 'depan', 'kategori')


admin.site.register(Kategori, KategoriAdmin)
admin.site.register(Stone, StoneAdmin)
