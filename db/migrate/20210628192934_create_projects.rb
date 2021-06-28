class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.integer :original_project_id
      t.text :name
      t.datetime :due_date
      t.integer :workspace_id
      t.datetime :start_date

      t.timestamps
    end
  end
end
