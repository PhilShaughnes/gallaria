class AddColumnPicToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :img, :string
    remove_column :photos, :url
  end
end
