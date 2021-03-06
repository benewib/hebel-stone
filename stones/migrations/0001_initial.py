# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-08-03 02:31
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Kategori',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nama_kategori', models.CharField(max_length=30)),
                ('deskripsi', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Stone',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kode', models.CharField(max_length=30)),
                ('deskripsi', models.CharField(max_length=200)),
                ('cover_stone', models.ImageField(upload_to='\\images')),
                ('kategori', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='stones.Kategori')),
            ],
        ),
    ]
