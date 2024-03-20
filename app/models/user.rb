class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :description, presence: true

  has_many :messages
  has_many :chatrooms, through: :messages
  has_many :participants
  has_many :events, through: :participants
  has_many :liked_activities
  has_many :activities, through: :liked_activities
end
