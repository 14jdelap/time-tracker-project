class CreateSources < ActiveRecord::Migration[6.1]
  def change
    create_table :sources do |t|
      t.text :name
      t.text :access_token
      t.text :account_id
      t.integer :user_id

      t.timestamps
    end
  end
end
