class Product < ApplicationRecord
  belongs_to :product_category
  has_many :order_products

  validates_associated :product_category
  validates :nome, presence: true
  validates :preco, presence: true
  has_one_attached :image
end
