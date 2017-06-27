class AddLatitudeandLongitudeToBees < ActiveRecord::Migration[5.1]
  def change
    add_column :bees, :latitude, :decimal
    add_column :bees, :longitude, :decimal
    remove_column :bees, :location
  end
end
