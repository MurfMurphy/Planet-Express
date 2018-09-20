class RemoveShipIdFromJob < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :ship_id, :integer
  end
end
