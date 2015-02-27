class AddCourseToEnrollment < ActiveRecord::Migration
  def change
    remove_column :courses, :course_id
    add_column :courses, :course_number, :string
    add_column :enrollments, :course_number, :integer
  end
end
