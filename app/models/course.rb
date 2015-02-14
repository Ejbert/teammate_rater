class Course < ActiveRecord::Base
  has_many :teams
end