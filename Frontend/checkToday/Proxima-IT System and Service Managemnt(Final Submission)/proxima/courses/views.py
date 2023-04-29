from django.shortcuts import render, redirect
from .models import Courses
from .models import FreeCourse_info
from .models import PaidCourse_info
from .models import PaidSec
from django.contrib.auth.models import User, auth

# Create your views here.
def courses(request):
    corses = Courses.objects.all()
    return render(request, "course.html", {'corses': corses})


def free_course(request):
    cinfo = FreeCourse_info.objects.all()
    return render(request, 'free_course.html', {'cinfo':cinfo})


def paid_course(request):
    if request.method == 'POST':
        op = request.POST['subject']
        print(op)
        cpinfo = PaidCourse_info.objects.filter(id=op)
        print(cpinfo)
        cname = Courses.objects.filter(id=op)
        print(cname)
        csecs = PaidSec.objects.filter(c_id_id=op)
        print(csecs)

        return render(request, 'paidpage.html', {'cpinfo':cpinfo,'cname':cname, 'csecs':csecs})
    else:
        return render(request, 'paidpage.html')