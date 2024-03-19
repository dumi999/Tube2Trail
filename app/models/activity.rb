class Activity < ApplicationRecord
  validates :difficulty, inclusion: { in: %w(easy moderate difficult) }
  validates :name, presence: true
  validates :description, presence: true
end
