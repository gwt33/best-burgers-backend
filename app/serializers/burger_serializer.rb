class BurgerSerializer < ActiveModel::Serializer
  attributes :restaurant_id, :name, :description, :price

  belongs_to :restaurant
end
