class CreateYeasts < ActiveRecord::Migration[5.2]
  def change
    create_table :yeasts do |t|
      t.integer :quantity
      t.date :production_date
      t.string :strain
      t.references :brewery, foreign_key: true

      t.timestamps
    end
  end
end
