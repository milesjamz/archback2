class AddCaloriesToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :calories, :integer
  end
end
