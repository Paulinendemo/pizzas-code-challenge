class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :pizzas
 
end
