class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.text :interests
      t.string :political_affiliation
      t.string :religion

      t.timestamps
    end
  end
end
