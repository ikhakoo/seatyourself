class RemoveClosingFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :closing, :string
  end
end
