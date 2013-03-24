class CreatePolicalViews < ActiveRecord::Migration
  def change
    create_table :polical_views do |t|
      t.string :name
      t.integer :id

      t.timestamps
    end
  end
end
