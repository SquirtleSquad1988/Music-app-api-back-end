# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :album
  validates_length_of :comment, minimum: 1
  validates :user, presence: true
end
