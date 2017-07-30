class AddLatToParkers < ActiveRecord::Migration[5.1]
  def change
    add_column :parkers, :lat, :float
  end
end
