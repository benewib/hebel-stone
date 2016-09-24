import os
from PIL import Image
from io import BytesIO
from django.core.files.base import ContentFile
from .models import Kategori, Stone
from django.contrib import admin

class StoneAdmin(admin.ModelAdmin):
    list_display = ("kode", "deskripsi", "size", "harga", "image", "depan", "kategori",)

    def save_model(self, request, obj, form, change):
        tf = self.create_thumbnail(obj)
        obj.save()

    def create_thumbnail(self, obj):
        # original code for this method came from
        # http://snipt.net/danfreak/generate-thumbnails-in-django-with-pil/

        # If there is no image associated with this.
        # do not create thumbnail
        if not obj.image:
            return

        # Set our max thumbnail size in a tuple (max width, max height)
        THUMBNAIL_SIZE = (256,75)

        DJANGO_TYPE = obj.image.file.content_type

        if DJANGO_TYPE == 'image/jpeg':
            PIL_TYPE = 'jpeg'
            FILE_EXTENSION = 'jpg'
        elif DJANGO_TYPE == 'image/png':
            PIL_TYPE = 'png'
            FILE_EXTENSION = 'png'

        # Open original photo which we want to thumbnail using PIL's Image
        image = Image.open(BytesIO(obj.image.read()))


        # We use our PIL Image object to create the thumbnail, which already
        # has a thumbnail() convenience method that contrains proportions.
        # Additionally, we use Image.ANTIALIAS to make the image look better.
        # Without antialiasing the image pattern artifacts may result.
        image.thumbnail(THUMBNAIL_SIZE, Image.ANTIALIAS)

        # Save the thumbnail
        temp_handle = BytesIO()
        image.save(temp_handle, PIL_TYPE)
        temp_handle.seek(0)

        name = os.path.basename(obj.image.name)

        obj.thumbnail.save(name, ContentFile(temp_handle.getvalue()), save=False)

        return True


admin.site.register(Kategori)
admin.site.register(Stone, StoneAdmin)
