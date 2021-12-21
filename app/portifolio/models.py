from django.db import models
from django.db.models.fields import CharField


class Tecnology(models.Model):
    label = models.CharField("Label", max_length=50, unique=True)

    def __str__(self):
        return self.label

    class Meta:
        verbose_name_plural = u'Tecnologies'


class CurrentlyActivity(models.Model):
    profile_fk = models.ForeignKey("Profile", on_delete=models.CASCADE)
    descricao = models.CharField("Descrição", max_length=255)
    is_active = models.BooleanField(default=True)

    def __str__(self):
        return self.descricao


class Profile(models.Model):
    profile_foto = models.FileField(upload_to='images', null=True, blank=True)
    menu_foto = models.FileField(upload_to="images", null=True, blank=True)
    descricao_welcome = models.TextField("Descrição Welcome")
    funcao = models.CharField(max_length=255)

    localizacao = models.CharField(max_length=255)
    descricao_about_me = models.TextField("Descrição Sobre mim")

    def __str__(self):
        return f"< Eu ({self.id})>"


class Project(models.Model):
    BOT = "bot"
    API = "api"
    WEBSITE = "site"

    TYPES = (
        (BOT, "Bot"),
        (API, "API"),
        (WEBSITE, "Website")
    )

    title = models.CharField("title", max_length=100)
    description = models.TextField("description")
    link = models.URLField("link")
    image = models.ImageField(upload_to = 'images/', null=True, blank=True)
    tecnologies = models.ManyToManyField(Tecnology)
    is_active = models.BooleanField(default=True)
    type = models.CharField("Type", max_length=10, choices=TYPES, default=WEBSITE)

    def get_image_url(self):
        if self.image:
            return self.image.url

        padrao = 'api-padrao.png' if self.type ==  'api' else 'bot.jpg'

        return f'static/images/{padrao}'

    def __str__(self):
        return self.title


class Skill(models.Model):
    icon = models.FileField(upload_to = 'icons/')
    title = models.CharField('Title', max_length=40)
    is_active = models.BooleanField(default=True)
    order = models.CharField("order", max_length=5, default='a')

    def __str__(self):
        return self.title