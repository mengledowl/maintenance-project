class AddcourseIdToEnrollment < ActiveRecord::Migration
  def change
    add_column :enrollments, :course_id, :integer
  end
end
