class ProductCategory < ApplicationRecord
  belongs_to :restaurant
  has_many :products

  validates_associated :restaurant
  validates :titulo, presence: true
end
