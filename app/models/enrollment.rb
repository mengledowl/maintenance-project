class Enrollment < ActiveRecord::Base
  belongs_to :student
  has_many :courses
end
