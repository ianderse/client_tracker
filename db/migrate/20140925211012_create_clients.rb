class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.integer :age
      t.string :gender
      t.datetime :first_session
      t.datetime :last_session
      t.datetime :next_session
      t.datetime :final_session

      t.timestamps null: false
    end
  end
end
