class CreateFoodDay < ActiveRecord::Migration[6.0]
  def change
    create_table :food_days do |t|
      t.date :the_date
      t.string :summary
      t.integer :user_id
    end
  end
end
