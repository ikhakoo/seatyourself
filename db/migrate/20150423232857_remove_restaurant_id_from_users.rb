class RemoveRestaurantIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :restaurant_id, :integer
  end
end
