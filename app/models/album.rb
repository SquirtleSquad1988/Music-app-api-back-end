# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
end
