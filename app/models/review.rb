class Review < ActiveRecord::Base
  belongs_to :team_member
  belongs_to :user
  belongs_to :team

  #validates :team_member_id, presence: true
  validates :rating, presence: true
  validates :review, presence: true
  validates :team_id, presence: true

end
