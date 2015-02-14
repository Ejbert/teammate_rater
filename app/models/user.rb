class User < ActiveRecord::Base
  has_many :reviews
  has_many :team_members
  has_many :teams
end