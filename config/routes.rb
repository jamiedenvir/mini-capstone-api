Rails.application.routes.draw do
  
  # get "/first_product", controller: "products", action: "first_product"
  
  # get "/second_product", controller: "products", action: "second_product"

  # get "/any_product/:product" => "products#any_product"
  
  # get "/any_product_by_name/:product" => "products#any_product_by_name"

  get "/products", controller: "products", action: "index"

  get "/products/:id", controller: "products", action: "show"

  post "/products", controller: "products", action: "create"

  patch "/products/:id", controller: "products", action: "update"

  delete "/products/:id", controller: "products", action: "destroy"
end
