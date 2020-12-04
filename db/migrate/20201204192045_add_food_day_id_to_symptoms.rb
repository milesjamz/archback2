class AddFoodDayIdToSymptoms < ActiveRecord::Migration[6.0]
  def change
    add_column :symptoms, :food_day_id, :integer
  end
end
