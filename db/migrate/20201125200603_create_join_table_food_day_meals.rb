class CreateJoinTableFoodDayMeals < ActiveRecord::Migration[6.0]
  def change
    create_join_table :food_days, :meals do |t|
      # t.index [:food_day_id, :meal_id]
      # t.index [:meal_id, :food_day_id]
    end
  end
end
