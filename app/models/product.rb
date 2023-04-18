class Product < ApplicationRecord
  
  # Associations

  belongs_to :supplier
  has_many :images
  has_many :orders

  #Validations
  
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, presence: true
  # validates :description, length: { in: 10..500 }

  
  def is_discounted?
    !(price >= 10)
    # if price > 10
    #   return false
    # else
    #   return true
    # end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
