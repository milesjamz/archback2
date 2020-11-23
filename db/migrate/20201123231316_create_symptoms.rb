class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms do |t|
      t.string :name
      t.text :summary
      t.integer :severity
      t.integer :length
    end
  end
end
