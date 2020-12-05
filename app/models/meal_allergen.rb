class MealAllergen < ApplicationRecord

belongs_to :meal
belongs_to :allergen
    
end