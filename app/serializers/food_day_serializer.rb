class FoodDaySerializer < ActiveModel::Serializer
  attributes :id, :the_date, :summary
  has_many :meals
  has_many :drinks
  has_many :symptoms

end