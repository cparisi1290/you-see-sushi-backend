class SushiRollSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :description, :order_id
end
