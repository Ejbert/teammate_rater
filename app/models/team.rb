class Team < ActiveRecord::Base
  has_many :team_members
  has_many :reviews, through: :team_members
  belongs_to :course
end