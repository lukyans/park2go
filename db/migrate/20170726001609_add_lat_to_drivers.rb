class AddLatToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :lat, :string
  end
end
