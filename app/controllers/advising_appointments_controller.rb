class AdvisingAppointmentsController < ApplicationController
  def index
    @advising_appointments = AdvisingAppointment.where('appointment_time > ?', Time.now.beginning_of_day).order(:appointment_time)
  end
end