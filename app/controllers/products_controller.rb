class ProductsController < ApplicationController
    def index
        # call the helper method to get cart contents
        #binding.pry
        @cart = cart
    
    end

    def add
        
        my_cart = cart
        my_cart << params[:product]
        session[:cart] = my_cart
        #binding.pry
        redirect_to root_path
    end
end
