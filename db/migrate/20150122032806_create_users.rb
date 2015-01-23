class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image
      t.string :password_digest
      t.string :profile_photo
      t.string :cover_photo
      t.string :about_me

      t.timestamps
    end
  end
end
