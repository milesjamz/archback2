class CreateJoinTableMealAllergens < ActiveRecord::Migration[6.0]
  def change
    create_join_table :meals, :allergens do |t|
      # t.index [:meal_id, :allergen_id]
      # t.index [:allergen_id, :meal_id]
    end
  end
end
