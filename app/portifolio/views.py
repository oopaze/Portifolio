from django.shortcuts import render
from django.core.files.storage import FileSystemStorage
from django.http import FileResponse

from .models import Profile, Project, Skill, CurrentlyActivity


def home(request):
    context = {
        "projetos": Project.objects.filter(is_active=True),
        "skills": Skill.objects.filter(is_active=True).order_by("order"),
        "profile": Profile.objects.all().first(),
        "activities": CurrentlyActivity.objects.filter(is_active=True)
    }

    return render(request, "default/home.html", context)


def download_resume(request):
    fs = FileSystemStorage('static/files')
    response = FileResponse(fs.open('jose-pedro.pdf', 'rb'), content_type='application/force-download')
    response['Content-Disposition'] = 'attachment; filename="resume.pdf"'
    return response