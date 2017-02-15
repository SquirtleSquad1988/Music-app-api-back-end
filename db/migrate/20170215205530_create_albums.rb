# frozen_string_literal: true

class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.text :artist_name
      t.text :album_name

      t.timestamps null: false
    end
  end
end
