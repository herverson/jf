class RestaurantSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :nome, :descricao, :review, :status, :delivery_tax, :estado, 
    :cidade, :rua, :bairro, :numero, :complemento, :referencia, :cep, :image_url

  has_many :product_categories, if: -> { @instance_options[:product_categories] }

  def image_url
    rails_blob_url(object.image)
  end

  def review
    object.reviews&.average(:valor)
  end
end

