class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true
  validates :username, presence: true

  has_many :team_members
  has_many :reviews, through: :team_members, dependent: :destroy
  has_many :teams, through: :team_members
end