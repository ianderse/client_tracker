class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :date_time
      t.integer  :client_id
      t.text     :notes

      t.timestamps null: false
    end
  end
end
