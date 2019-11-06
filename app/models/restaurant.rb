class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :product_categories
  has_many :orders
  has_many :reviews

  validates_associated :category
  validates :nome, presence: true
  validates :status, presence: true
  validates :delivery_tax, presence: true
  validates :cidade, presence: true
  validates :rua, presence: true

  enum status: { closed: 0, open: 1 }
  has_one_attached :image

  geocoded_by :address

  after_validation :geocode

  def address
    [rua, numero, cidade, estado].compact.join(', ')
  end
end
