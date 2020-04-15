class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.integer :algo
      t.integer :apps
      t.integer :blog
      t.integer :song_rec
      t.integer :song_wrote
      t.integer :journal
      t.integer :letters
      t.integer :calls
      t.integer :front_p
      t.integer :side_p
      t.integer :rear_p
      t.integer :curls
      t.integer :burpee
      t.integer :push_u
      t.integer :chin_u
      t.integer :lunges
      t.integer :lat_raise
      t.integer :front_raise
      t.integer :ohp
      t.integer :mood
      t.date :the_date
      t.string :summary
      t.string :color

      t.timestamps
    end
  end
end
