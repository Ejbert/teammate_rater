class Team_Member < ActiveRecord::Base
  has_many :reviews
  belongs_to :team
  belongs_to :user

end