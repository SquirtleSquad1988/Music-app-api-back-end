# frozen_string_literal: true

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :editable, :album_id
  def editable
    scope == object.user
  end
end
