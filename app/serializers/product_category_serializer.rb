class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :titulo

  has_many :products
end
