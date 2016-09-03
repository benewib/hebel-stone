from django import forms
from .models import Stone

class StoneForm(forms.ModelForm):
    class Meta:
        model = Stone
        fields = ('kode', 'deskripsi', 'size', 'harga', 'cover_stone', 'kategori',)
