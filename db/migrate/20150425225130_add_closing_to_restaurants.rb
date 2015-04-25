class AddClosingToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :closing, :time
  end
end
