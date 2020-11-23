class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :quantity
      t.boolean :minutes_reps
    end
  end
end
