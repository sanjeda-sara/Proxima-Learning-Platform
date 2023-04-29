from django.shortcuts import render
from .models import Cus_Contact


# Create your views here.
def contact(request):
    if request.method == 'POST':
        cname = request.POST['name']
        cemail = request.POST['email']
        csub = request.POST['subject']
        csms = request.POST['message']

        mydata = Cus_Contact(cus_name=cname, cus_email=cemail, cus_sub=csub, cus_sms=csms)

        mydata.save();
        conts = Cus_Contact.objects.all();
        return render(request, "randr.html", {'conts': conts})
    return render(request, "contact.html")

def randr(request):
    conts = Cus_Contact.objects.all();
    return render(request, "randr.html", {'conts': conts})
