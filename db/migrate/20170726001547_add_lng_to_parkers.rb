class AddLngToParkers < ActiveRecord::Migration[5.1]
  def change
    add_column :parkers, :lng, :string
  end
end
