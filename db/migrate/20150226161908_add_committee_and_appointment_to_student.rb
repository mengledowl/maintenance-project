class AddCommitteeAndAppointmentToStudent < ActiveRecord::Migration
  def change
    add_column :students, :committee_id, :integer
    add_column :students, :advising_appointment_id, :integer
  end
end
