class AddUserIdToDreamSpots < ActiveRecord::Migration
  def change
    add_column :dream_spots, :user_id, :integer 
  end
end
