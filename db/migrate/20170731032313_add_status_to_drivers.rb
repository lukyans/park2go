class AddStatusToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :active, :boolean, default: true
  end
end
