class Team < ActiveRecord::Base
  has_many :team_members
  has_many :reviews, through: :team_members
  belongs_to :course

  validates :name, presence: true
  validates :course_id, presence: true
  
end