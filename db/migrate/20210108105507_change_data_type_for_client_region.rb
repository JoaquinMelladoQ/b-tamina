class ChangeDataTypeForClientRegion < ActiveRecord::Migration[5.2]
  def change
    change_table :clients do |t|
      t.change :region, :string
    end
  end
end
