class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :product_categories
  has_many :orders
  has_many :reviews

  validates_associated :category
  validates :name, presence: true
  validates :status, presence: true
  validates :delivery_tax, presence: true
  validates :city, presence: true
  validates :street, presence: true

  enum status: %i[ closed open ]

  has_one_attached :image

  geocoded_by :address

  after_validation :geocode

  def address
    [street, number, city, state].compact.join(', ')
  end
end
