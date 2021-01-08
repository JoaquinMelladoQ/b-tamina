class ChangeConfirmationInDeals < ActiveRecord::Migration[5.2]
  def change
    change_column :deals, :confirmation, :boolean, :default => false
  end
end
