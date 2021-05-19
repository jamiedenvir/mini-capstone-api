class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image_url, :supplier_name

end
