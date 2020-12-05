class Allergen < ApplicationRecord

has_many :meal_allergens
has_many :meals, through: :meal_allergens
    
end