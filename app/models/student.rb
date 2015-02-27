class Student < ActiveRecord::Base

  belongs_to :committee
  has_many :advising_appointments
  has_many :addresses
  has_many :colleges
  has_many :enrollments


end
