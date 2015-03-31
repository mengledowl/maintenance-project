class Student < ActiveRecord::Base

  belongs_to :committee

  has_many :advising_appointments
  has_many :addresses
  has_many :colleges
  has_many :enrollments

  has_many :courses, through: :enrollments

  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :enrollments, allow_destroy: true
  accepts_nested_attributes_for :courses

  def full_name
    "#{first_name} #{last_name}"
  end

end
