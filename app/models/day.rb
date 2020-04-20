class Day < ApplicationRecord

belongs_to :user
validates :the_date, uniqueness: { scope: :user_id, message: "only one record per day!" }


end