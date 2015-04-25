class AddOpeningToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :opening, :time
  end
end
