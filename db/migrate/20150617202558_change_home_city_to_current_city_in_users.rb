class ChangeHomeCityToCurrentCityInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :home_city, :current_city
  end
end
