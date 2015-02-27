class ChangeStudentToHaveAppointment < ActiveRecord::Migration
  def change
    remove_column :students, :advising_appointment_id
    add_column :advising_appointments, :student_id, :integer
  end
end
