# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :user, presence: true
  validates_length_of :album_name, :artist_name, minimum: 1
end
