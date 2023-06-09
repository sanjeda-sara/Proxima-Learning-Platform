# Generated by Django 3.1.3 on 2021-01-03 11:04

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0002_freecourse_info'),
    ]

    operations = [
        migrations.CreateModel(
            name='PaidCourse_info',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('c_fee', models.IntegerField()),
                ('c_lang', models.CharField(max_length=20)),
                ('c_duration', models.IntegerField()),
                ('c_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='courses.courses')),
            ],
        ),
    ]
