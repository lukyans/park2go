class CreateParkers < ActiveRecord::Migration[5.1]
  def change
    create_table :parkers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :password_digest
    end
  end
end
