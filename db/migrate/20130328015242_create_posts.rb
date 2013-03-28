class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :timestamp
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
