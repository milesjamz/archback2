class CreateMealAllergens < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_allergens do |t|
      t.integer :meal_id
      t.integer :allergen_id
    end
  end
end
