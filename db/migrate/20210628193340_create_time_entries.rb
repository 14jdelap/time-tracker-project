class CreateTimeEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :time_entries do |t|
      t.integer :task_id
      t.integer :duration_seconds
      t.datetime :start_date

      t.timestamps
    end
  end
end
