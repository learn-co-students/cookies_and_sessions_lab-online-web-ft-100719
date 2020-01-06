class ProductsController < ApplicationController

  def index
    if cart.count > 0
      @cart = cart
    else 
      @cart = ['Your Cart is Empty']
    end 
  end 

  def create 
    cart << params[:product]
    redirect_to products_path
  end 

end
