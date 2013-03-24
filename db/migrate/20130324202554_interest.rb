class Interest < ActiveRecord::Migration
  def change
    create_table :interest do |t|
      t.integer :id
      t.string :name
      
      t.timestamps
    end
  end
end
