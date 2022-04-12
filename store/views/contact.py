from django.shortcuts import redirect, render
from django.views import View
from django.core.mail import send_mail
from store.models.contact import Contact

class Contacts(View):
    def get(self,request):
        return render(request,"contact.html")
    def post(self,request):
        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        desc = request.POST.get('desc')
        value={
            'name':name,
            'email':email,
            'subject':subject,
            'desc':desc
        }
        #Validations
        error = None
        if not name:
            error = "Name required.."
        elif not email:
            error = "Email required.."
        elif not subject:
            error = "Subject Required.."
        elif not desc:
            error = "Massege required..."
        elif len(desc) < 15:
            error = "Required massage min words 15.."

        if not error:
            contact = Contact(name=name,email=email,subject=subject,desc=desc)
            send_mail(
                "Shoping",
                "Welcome on my shop freindly",
                'datascience750@gmail.com',
                [email],
                fail_silently=False,
            )
            contact.save()     
            return redirect('/')
        else:
            data= {
                'error' : error,
                'value' : value
            }
            return render(request,'contact.html',data)