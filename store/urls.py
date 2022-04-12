from django.urls import path
from store.views.home import Home
from store.views.register import Registers
from store.views.login import Logins
from store.views.contact import Contacts
from store.views.logout import logout
from store.views.cart import Cart
from store.views.checkout import CheckOut
urlpatterns = [
    path('',Home.as_view()),
    path('register/',Registers.as_view()),
    path('login/',Logins.as_view(),name="login"),
    path('contact/',Contacts.as_view()),
    path('logout/',logout,name="logout"),
    path('cart/',Cart.as_view()),
    path('checkout/',CheckOut.as_view(),name="Checkout"),
]

