from django.shortcuts import redirect, render
from django.views import View
from store.models.category import Category
from store.models.product import Product

class Home(View):
    def get(self,request):
        #print(request.session.get('customer'))
        cart = request.session.get('cart')
        if not cart:
            request.session.cart = {}

        category = Category.objects.all()
        product = None
        categoryID = request.GET.get('category')
        if categoryID:
            product = Product.get_all_product_by_email_id(categoryID)
        else:
            product =Product.objects.all()
        data={
            'category':category,
            'product':product
        }
        return render(request,"product.html",data)

    def post(self,request):
        product = request.POST.get('product')
        remove = request.POST.get('remove')
        cart = request.session.get('cart')
        if cart:
            quantity = cart.get(product)
            if quantity:
                if remove:
                    if quantity<=1:
                        cart.pop(product)
                    else:
                        cart[product]=quantity-1
                else:
                    cart[product] = quantity+1
            else:
                cart[product] = 1
        else:
            cart = {}
            cart[product] = 1

        request.session['cart'] = cart
        return redirect('/')