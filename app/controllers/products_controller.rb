class ProductsController < ApplicationController

  def index
    if cart.count > 0
      @current_cart = cart
    else 
      @current_cart = ['Your Cart is Empty']
    end 
  end 

  def create 
    cart << params[:product]
    redirect_to root_path
  end 

end
