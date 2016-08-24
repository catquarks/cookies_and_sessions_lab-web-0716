class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  

	  def curent_cart
	  	session[:cart] ||= []
	  end

	  def add_to_cart
	  	product = params["product"]
	  	curent_cart << product
	  	redirect_to products_path
	  end

	  # def add_to_cart
	  # 	binding.byebug
	  # 	product = params["product"]
	  # 	cart = session[:cart] || []
	  # 	cart << product
	  # 	session[:cart] = cart
	  # 	redirect_to cart_path
	  # end
	
		def cart
	  	@cart = curent_cart
	  end

end
                     