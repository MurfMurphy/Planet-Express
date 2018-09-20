class RemoveJobIdFromShip < ActiveRecord::Migration[5.2]
  def change
    remove_column :ships, :job_id, :integer
  end
end
