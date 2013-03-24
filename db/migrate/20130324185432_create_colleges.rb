class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.integer :id
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
