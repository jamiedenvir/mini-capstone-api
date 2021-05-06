class ProductsController < ApplicationController

  def all_products
    products = Product.all
    render json: {message: "All Products"}
    
  end


end
