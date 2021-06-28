class CreateWorkspaces < ActiveRecord::Migration[6.1]
  def change
    create_table :workspaces do |t|
      t.text :original_workspace_id
      t.text :source_name
      t.integer :source_id

      t.timestamps
    end
  end
end
