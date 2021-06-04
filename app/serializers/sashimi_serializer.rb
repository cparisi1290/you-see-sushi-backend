class SashimiSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :order_id
end
