class FoodDaySerializer < ActiveModel::Serializer
  attributes :id
  has_many :meals
  has_many :drinks

end