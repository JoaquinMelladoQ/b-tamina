class AddRegionToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :region, :integer
  end
end
