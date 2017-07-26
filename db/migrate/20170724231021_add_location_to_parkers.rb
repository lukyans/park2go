class AddLocationToParkers < ActiveRecord::Migration[5.1]
  def change
    add_column :parkers, :location, :string
  end
end
