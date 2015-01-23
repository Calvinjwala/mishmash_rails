class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :city
      t.string :state
      t.string :address
      t.integer :zip_code
      t.string :category

      t.timestamps
    end
  end
end
