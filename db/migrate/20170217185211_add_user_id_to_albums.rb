# frozen_string_literal: true

class AddUserIdToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_reference :albums, :user, foreign_key: true
  end
end
