# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :user, presence: true
end
