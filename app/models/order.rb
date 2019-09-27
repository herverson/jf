class Order < ApplicationRecord
  belongs_to :restaurant
  hasmany :order_products

  validates :nome, presence: true
  validates :numero_telefone, presence: true
  validates :valor_total, presence: true

  enum status: { waiting: 0, delivery: 1 }

  accepts_nested_attributes_for :order_products, :allow_destroy: true

  before_validation :set_preco

  private
    def set_preco
      @final_preco = 0
      order_products.each do |order_product|
        produto = Product.find order_product.product_id
        @final_preco += order_product.quantidade * product.preco
      end

      self.valor_total = @final_preco
    end
end
