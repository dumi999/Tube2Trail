class LikedActivity < ApplicationRecord
  validates :user_id, uniqueness: { scope: :activity_id }
  belongs_to :activity
  belongs_to :user
  validates :liked, presence: true
end
