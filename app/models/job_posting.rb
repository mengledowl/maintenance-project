class JobPosting < ActiveRecord::Base
  has_many :job_postings_courses
  has_many :courses, through: :job_postings_courses

  accepts_nested_attributes_for :job_postings_courses, allow_destroy: true
end
