class Meal < ApplicationRecord

    belongs_to :food_day
    has_many :meal_allergens
    has_many :allergens, through: :meal_allergens    
    
    end