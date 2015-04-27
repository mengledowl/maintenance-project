class RenameJobPostingsIdToJobPostingId < ActiveRecord::Migration
  def change
    rename_column :job_postings_courses, :job_postings_id, :job_posting_id
  end
end
