class AddOpenClientToClients < ActiveRecord::Migration
  def change
    add_column :clients, :open_client, :boolean
  end
end
