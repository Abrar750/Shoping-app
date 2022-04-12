from django.shortcuts import redirect, render
from django.views import View
from store.models.orders import Order
from store.models.product import Product
from store.models.customeer import Customer


class CheckOut(View):
    def post(self,request):
        address = request.POST.get('address')
        phone = request.POST.get('phone')
        customer = request.session.get('customer')
        cart = request.session.get('cart')
        product = Product.get_product_by_id(list(cart.keys()))
       
        for product in product:
            order = Order(customer = Customer(id=customer),product = product , price = product.price, address = address, phone=phone, quantity=cart.get(str(product.id)))
            
            order.placeoder()
        request.session['cart'] = {}
        return redirect('/')
