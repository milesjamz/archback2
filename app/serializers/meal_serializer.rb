class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :quantity, :allergens

  has_many :allergens

end