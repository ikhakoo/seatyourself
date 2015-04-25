class RemoveOpeningFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :opening, :string
  end
end
