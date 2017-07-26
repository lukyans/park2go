class AddLocationToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :location, :string
  end
end
