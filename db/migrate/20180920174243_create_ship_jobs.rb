class CreateShipJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :ship_jobs do |t|
      t.integer :job_id
      t.integer :ship_id

      t.timestamps
    end
  end
end
