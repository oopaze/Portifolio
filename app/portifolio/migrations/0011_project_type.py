# Generated by Django 3.2.7 on 2021-10-02 03:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portifolio', '0010_skill_is_active'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='type',
            field=models.CharField(choices=[(1, 'Bot'), (2, 'API'), (3, 'Website')], default=3, max_length=3, verbose_name='Type'),
        ),
    ]
