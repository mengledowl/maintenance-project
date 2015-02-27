class CreateAdvisingAppointments < ActiveRecord::Migration
  def change
    create_table :advising_appointments do |t|
      t.datetime :appointment_time

      t.timestamps
    end
  end
end
