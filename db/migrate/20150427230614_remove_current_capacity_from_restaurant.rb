class RemoveCurrentCapacityFromRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :current_capacity, :integer
  end
end
