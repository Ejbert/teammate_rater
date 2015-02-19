class User < ActiveRecord::Base
  has_many :team_members
  has_many :reviews, through: :team_members, dependent: :destroy
  has_many :teams, through: :team_members
end