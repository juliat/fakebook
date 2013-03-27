class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
