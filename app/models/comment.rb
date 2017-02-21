# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
end
