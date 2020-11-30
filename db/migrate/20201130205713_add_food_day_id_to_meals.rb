class AddFoodDayIdToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :food_day_id, :integer
  end
end
