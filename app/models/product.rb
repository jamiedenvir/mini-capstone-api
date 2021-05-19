class Product < ApplicationRecord

  belongs_to :supplier 

  def supplier_name
    supplier.name
  end



  validates :name, presence: true, uniqueness: true

  validates :price, numericality: {greater_than: 0}

  validates :description, length: {maximum: 500}
  
  validates :quantity, numericality: {greater_than: 0}

  




  # def is_discounted?
  # end


end
