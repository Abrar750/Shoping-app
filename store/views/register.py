from django.http import HttpResponse
from django.shortcuts import redirect, render
from django.views import View
from store.models.customeer import Customer
from django.contrib.auth.hashers import make_password

class Registers(View):
    def get(self,request):
        return render(request,"register.html")
    def post(self,request):
        name = request.POST.get('name')
        email = request.POST.get('email')
        password = request.POST.get('password')
        phone = request.POST.get('phone')
        gender = request.POST.get('gender')
        value = {
            'name':name,
            'email':email,
            'password':password,
            'phone':phone,
            'gender':gender
        }
        #Validations
        error = None
        if not name:
            error = "Name required.."
        elif len(name) < 3:
            error = "Name lenght required .."
        elif not email:
            error = "Email required.."
        elif not password:
            error = "Password required.."
        elif not phone:
            error = "Phone number required.."
        elif Customer.isExists(email):
            error = "Email all ready exists.."
        if not error:
            customer = Customer(name = name ,email=email ,password=password,phone=phone ,gender=gender)
            customer.password = make_password(password)
            request.session['name'] = customer.name
            customer.save()
            return redirect('/login/')
        else:
            data = {
                'value':value,
                'error':error
            }
        return render(request,'register.html',data)
