class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.date :birthday
      t.boolean :female
      t.integer :college_id
      t.string :website
      t.integer :political_views_id

      t.timestamps
    end
  end
end
