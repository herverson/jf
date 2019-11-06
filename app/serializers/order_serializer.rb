class OrderSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_id, :valor_total, :status
end
