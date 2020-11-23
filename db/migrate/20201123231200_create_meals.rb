class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :summary
      t.integer :quantity
      t.integer :speed
    end
  end
end
