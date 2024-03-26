class Activity < ApplicationRecord
  validates :difficulty, inclusion: { in: %w(easy moderate difficult extreme) }
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  has_many :events
  has_many :participants, through: :events
  has_one :chatroom
  has_many :liked_activities
  has_many :users, through: :liked_activities
  has_many_attached :images
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
