class ProductSerializer < ActiveModel::Serializer
  attributes :id, :nome, :descricao, :preco, :image_url

  def image_url
    rails_blob_url(object.image)
  end
end
