class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :email, :null => false
      t.string :password_hashed, :null => false

      t.timestamp(null: false)
    end
    add_index :users, :email, :unique => true
  end

end
