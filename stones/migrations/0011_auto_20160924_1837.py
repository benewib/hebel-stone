# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-09-24 11:37
from __future__ import unicode_literals

from django.db import migrations, models
import stones.models


class Migration(migrations.Migration):

    dependencies = [
        ('stones', '0010_auto_20160917_2038'),
    ]

    operations = [
        migrations.AddField(
            model_name='stone',
            name='thumbnail',
            field=models.ImageField(blank=True, null=True, upload_to=stones.models.get_thumb_path),
        ),
        migrations.AlterField(
            model_name='stone',
            name='cover_stone',
            field=models.ImageField(upload_to=stones.models.get_file_path),
        ),
    ]
