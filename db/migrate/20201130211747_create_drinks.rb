class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.integer :quantity
      t.integer :food_day_id
      t.string :drink_type
    end
  end
end
