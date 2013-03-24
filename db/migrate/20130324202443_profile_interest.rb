class ProfileInterest < ActiveRecord::Migration
  def change
    create_table :profile_interests do |t|
      t.integer :profile_id
      t.integer :interest_id
      t.date :date
      
      t.timestamps
    end
  end
end
