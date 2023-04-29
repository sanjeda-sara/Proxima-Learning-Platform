from django.shortcuts import render
from .models import Member
from django.apps import apps
serv = apps.get_model('services','Services')


# Create your views here.
def index(request):
    mem1 = Member()
    mem1.name = 'Shafi Partho'
    mem1.desc = 'Head of Software Development panel'
    mem1.img = 'partho.jpg'

    mem2 = Member()
    mem2.name = 'Sanjeda Jenny'
    mem2.desc = 'Head of Editing Panel'
    mem2.img = 'jenny.jpg'

    mem3 = Member()
    mem3.name = 'Tashfia Neha'
    mem3.desc = 'Head of App development Panel'
    mem3.img = 'tashfia.jpg'

    mems = [mem1, mem2, mem3]

    sers = serv.objects.all()
    return render(request, "index.html", {'mems': mems, 'sers':sers})

