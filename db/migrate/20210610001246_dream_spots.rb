class DreamSpots < ActiveRecord::Migration
  def change
    create_table :dream_spots do |t|
      t.string :name
      t.string :country
      t.string :season
      t.timestamps null: false
    end
  end
end
