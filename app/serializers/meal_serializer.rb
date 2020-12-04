class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :quantity

  has_many :allergens
end