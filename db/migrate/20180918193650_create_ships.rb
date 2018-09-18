class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.integer :user_id
      t.integer :job_id
      t.string :name
      t.integer :capacity
      t.string :location

      t.timestamps
    end
  end
end
