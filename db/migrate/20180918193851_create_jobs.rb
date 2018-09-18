class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.integer :boat_id
      t.text :job_desc
      t.string :origin
      t.string :destination
      t.decimal :cost
      t.integer :cont_needed

      t.timestamps
    end
  end
end
