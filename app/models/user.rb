class User < ApplicationRecord
	has_secure_password
	  validates :username, uniqueness: { case_sensitive: false }

	has_many :days
	has_many :food_days
	has_many :meals, through: :food_days
end
