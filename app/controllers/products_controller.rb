class ProductsController < ApplicationController

  # def first_product
  #   product = Product.first
  #   render json: product.as_json
  # end

  # def second_product
  #   product = Product.second
  #   render json: product.as_json
  # end

  
  # def any_product_by_name
  #   product = params[:product_name]
  #   display_product = Product.find_by(name: product)
  #   render json: display_product
  # end


  def index
    # render json: {message: "TEST"}
    products = Product.all
    render json: products.as_json
  end

  def show
    # render json: {message: "TEST"}
    product = Product.find(params[:id])
    render json: product.as_json(methods: [:is_discounted?])
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url]
      )
    product.save
    render json: product.as_json
  end

  def update
    # render json: {messgae: "TEST"}
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product successfully obliterated"}


  end

end
