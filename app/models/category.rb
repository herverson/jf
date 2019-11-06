class Category < ApplicationRecord
  has_many :restaurants
  validates :titulo, presence: true
  has_one_attached :image
end
