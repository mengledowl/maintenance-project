class CreateJobPostingsCourses < ActiveRecord::Migration
  def change
    create_table :job_postings_courses do |t|
      t.references :job_postings
      t.references :courses

      t.timestamps
    end
  end
end
