# Generated by Django 3.2.7 on 2021-10-02 02:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portifolio', '0008_auto_20211002_0220'),
    ]

    operations = [
        migrations.AlterField(
            model_name='skill',
            name='icon',
            field=models.FileField(upload_to='icons/'),
        ),
    ]
