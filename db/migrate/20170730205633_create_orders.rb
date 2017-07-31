class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :driver, foreign_key: true
      t.references :parker, foreign_key: true

      t.timestamps
    end
  end
end
