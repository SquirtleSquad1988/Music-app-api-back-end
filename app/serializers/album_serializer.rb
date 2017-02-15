# frozen_string_literal: true

class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :artist_name, :album_name
end
