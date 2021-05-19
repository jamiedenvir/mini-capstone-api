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
    products = Product.all 
    if params[:search_term]
      products = products.where("name iLIKE ?", "%#{params[:search_term]}%")
    end
    products = products.order[:price]

    render json: products
  end

  def show
    # render json: {message: "TEST"}
    product = Product.find(params[:id])
    render json: product
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url]
      )
    product.save
    render json: product
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    # render json: {messgae: "TEST"}
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    
    product.save
    render json: product
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product successfully obliterated"}


  end

end
