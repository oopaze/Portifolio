from django.contrib import admin

from . import models


@admin.register(models.Project)
class ProjectsAdmin(admin.ModelAdmin):
    ...


@admin.register(models.Skill)
class SkillsAdmin(admin.ModelAdmin):
    ...


@admin.register(models.Tecnology)
class TecnologyAdmin(admin.ModelAdmin):
    ...


class CurrentlyActivityInline(admin.TabularInline):
    model = models.CurrentlyActivity 


@admin.register(models.Profile)
class ProfileAdmin(admin.ModelAdmin):
    model = models.Profile
    inlines = [CurrentlyActivityInline]
