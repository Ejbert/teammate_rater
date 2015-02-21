class User < ActiveRecord::Base
  has_secure_password

  has_many :team_members
  has_many :reviews, through: :team_members, dependent: :destroy
  has_many :teams, through: :team_members

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end