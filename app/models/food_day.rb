class FoodDay < ApplicationRecord

    belongs_to :user
    validates :the_date, uniqueness: { scope: :user_id, message: "only one record per day!" }
    has_many :meals
    has_many :symptoms
    has_many :drinks
    
    end