class AddLngToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :lng, :float
  end
end
