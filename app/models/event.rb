class Event < ApplicationRecord
  belongs_to :user
  belongs_to :activity # Use singular form since it's a belongs_to association
  validates :date, presence: true
  has_many :participants
  validates :creator, presence: true, inclusion: { in: [true, false], message: "%{value} is not a valid boolean value" }
end
