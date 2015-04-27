class RenameCouresesIdToCourseId < ActiveRecord::Migration
  def change
    rename_column :job_postings_courses, :courses_id, :course_id
  end
end
