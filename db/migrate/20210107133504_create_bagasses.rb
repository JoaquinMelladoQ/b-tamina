class CreateBagasses < ActiveRecord::Migration[5.2]
  def change
    create_table :bagasses do |t|
      t.integer :quantity
      t.date :production_date
      t.references :brewery, foreign_key: true

      t.timestamps
    end
  end
end
