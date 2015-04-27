class JobPostingsCourse < ActiveRecord::Base
  belongs_to :job_posting
  belongs_to :course
end
