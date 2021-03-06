# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-09-08 02:53
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stones', '0008_auto_20160831_1729'),
    ]

    operations = [
        migrations.AlterField(
            model_name='stone',
            name='cover_stone',
            field=models.ImageField(upload_to='stones/'),
        ),
        migrations.AlterField(
            model_name='stone',
            name='depan',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='stone',
            name='harga',
            field=models.DecimalField(blank=True, decimal_places=0, max_digits=6, null=True),
        ),
    ]
