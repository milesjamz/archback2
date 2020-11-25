class CreateJoinTableFoodDaySymptoms < ActiveRecord::Migration[6.0]
  def change
    create_join_table :food_days, :symptoms do |t|
      # t.index [:food_day_id, :symptom_id]
      # t.index [:symptom_id, :food_day_id]
    end
  end
end
