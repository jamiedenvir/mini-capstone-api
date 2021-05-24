class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :quantity, :subtotal, :tax, :total

  belongs_to :product
end
