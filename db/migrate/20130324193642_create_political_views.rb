class CreatePoliticalViews < ActiveRecord::Migration
  def change
    create_table :political_views do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
