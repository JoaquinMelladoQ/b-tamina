class AddRegionToBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :region, :integer
  end
end
