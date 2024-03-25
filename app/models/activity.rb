class Activity < ApplicationRecord
  validates :difficulty, inclusion: { in: %w(easy moderate difficult) }
  validates :name, presence: true
  validates :description, presence: true
  has_many :events
  has_many :participants, through: :events
  has_one :chatroom
  has_many :liked_activities
  has_many :users, through: :liked_activities
  has_one_attached :image
end
