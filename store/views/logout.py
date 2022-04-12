from django.shortcuts import redirect, render

def logout(request):
    request.session.clear()
    return redirect('login')