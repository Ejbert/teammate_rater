class Review < ActiveRecord::Base
  belongs_to :team_member
  belongs_to :user
  belongs_to :team
end