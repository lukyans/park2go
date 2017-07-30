class AddLngToParkers < ActiveRecord::Migration[5.1]
  def change
    add_column :parkers, :lng, :float
  end
end
