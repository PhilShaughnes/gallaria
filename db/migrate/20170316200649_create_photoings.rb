class CreatePhotoings < ActiveRecord::Migration[5.0]
  def change
    create_table :photoings do |t|
      t.references :gallery, foreign_key: true
      t.references :photo, foreign_key: true

      t.timestamps
    end
  end
end
