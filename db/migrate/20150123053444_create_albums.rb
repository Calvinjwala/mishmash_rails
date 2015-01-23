class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :album_image
      t.string :category

      t.timestamps
    end
  end
end
