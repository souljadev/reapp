class AddPicToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :pic, :string
  end
end
