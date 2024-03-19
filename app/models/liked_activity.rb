class LikedActivity < ApplicationRecord
  belongs_to :activity
  belongs_to :user
end
