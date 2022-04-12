from django.shortcuts import redirect, render
from django.views import View
from store.models.customeer import Customer
from django.contrib.auth.hashers import check_password

class Logins(View):
    def get(self,request):
        return render(request,'login.html')
    def post(self,request):
        email = request.POST.get('email')
        password = request.POST.get('password')

        user = Customer.get_email_by_id(email)
        error = None
        if user:
            flag = check_password(password , user.password)
            if flag:
                request.session['customer']=user.id
                return redirect('/')
            else:
                error = "Password not vallid.."
        else:
            error = "Email and password not vallid.."
        data = {
              'error':error
        }
        return render(request,'login.html',data)

