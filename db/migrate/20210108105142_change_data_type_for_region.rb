class ChangeDataTypeForRegion < ActiveRecord::Migration[5.2]
  def change
    change_table :breweries do |t|
      t.change :region, :string
    end
  end
end
