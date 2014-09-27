class RemoveSessionFromClientsTable < ActiveRecord::Migration
  def change
  	remove_column :clients, :first_session
  	remove_column :clients, :last_session
  	remove_column :clients, :next_session
  	remove_column :clients, :final_session
  end
end
