class ChangeUserCityToUserHomeCity < ActiveRecord::Migration
  def change
    remove_column :users, :city, :string
    add_column :users, :home_city, :string
  end
end
