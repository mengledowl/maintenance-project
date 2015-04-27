class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :students, through: :enrollments

  has_many :job_postings_courses
  has_many :job_postings, through: :job_postings_courses
end