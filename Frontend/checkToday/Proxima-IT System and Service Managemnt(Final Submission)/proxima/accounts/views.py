from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth
from .models import Apply_emp,Service_order
from django.apps import apps
serv = apps.get_model('services','Services')


# Create your views here.

def signin(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request, user)
            return redirect("/")
        else:
            messages.info(request, 'invalid credentials')
            return redirect('signin')
    else:
        return render(request, 'signin.html')


def register(request):
    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        email = request.POST['email']
        # contact_no = request.POST['contact_no']

        if password1 == password2:
            if User.objects.filter(username=username).exists():
                messages.info(request, 'Username has already taken')
                return redirect('register')
            elif User.objects.filter(email=email).exists():
                messages.info(request, 'email has already used')
                return redirect('register')
            else:
                user = User.objects.create_user(username=username, password=password1, email=email,
                                                first_name=first_name, last_name=last_name)
                user.save();
                print('user created')
                return redirect('signin')

        else:
            messages.info(request, 'Password is not Matching')
            return redirect('register')
        return redirect('/')

    else:
        return render(request, 'register.html')


def logout(request):
    auth.logout(request)
    return redirect('/')


def apply_employee(request):
    if request.method == 'POST':
        name = request.POST['uname']
        fname = request.POST['first_name']
        lname = request.POST['last_name']
        email = request.POST['email']
        contact = request.POST['number']
        paradd = request.POST['permanent_address']
        preadd = request.POST['present_address']
        op = request.POST['subject']
        empdata = Apply_emp(ename=name, efname=fname, elname=lname, eemail=email, econtact=contact, eparadd=paradd,
                            epreadd=preadd, eoption=op)
        empdata.save();
        print('Request Submitted')
    sers = serv.objects.all()
    return render(request, 'apply_employee.html', {'sers':sers})

def profile(request):
    return render(request, "user_prof.html")

def service_order(request):
    if request.method == 'POST':
        op = request.POST['subject']
        sers = serv.objects.filter(id=op)
        return render(request, 'service_order.html',{'sers':sers})
    else:
        return render(request, 'service_order.html')

def place_order(request):
    if request.method == 'POST':
        dess = request.POST['des']
        reqq = request.POST['req']
        dell = request.POST['del']
        add = request.POST['p_address']

        mydata = Service_order(sdes=dess, sreq=reqq, sdel=dell, sadd=add,stitle=serv.s_name)
        mydata.save();
        return render(request, 'hihello.html')
    else:
        return redirect("/")
