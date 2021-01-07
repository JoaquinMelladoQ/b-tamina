class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.date :deal_date
      t.integer :deal_quantity
      t.boolean :confirmation
      t.references :brewery, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
