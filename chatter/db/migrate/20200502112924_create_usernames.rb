class CreateUsernames < ActiveRecord::Migration[6.0]
  def change
    create_table :usernames do |t|
      t.string :body
      t.integer :likes_count
      t.integer :reposts_count

      t.timestamps
    end
  end
end
