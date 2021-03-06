class StudentsController < ApplicationController

  before_action :committee_check
  before_action :set_student, except: [:index, :new, :create]

  def index
    @students = Student.all
  end

  def show
    @student.enrollments.order(:term)
  end

  def new
    @student = Student.new
    3.times { @student.addresses.build }
  end

  def create
    @student = Student.create(student_params)
    if @student.persisted?
      redirect_to @student, notice: 'Successfully created.'
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @student.update(student_params)
      flash.now[:notice] = 'Updated successfully'
      render :show
    else
      render :edit
    end
  end

  def edit_schedule
    @courses = Course.all
  end

  def update_schedule
    if @student.update(schedule_params)
      redirect_to student_path(@student), notice: 'Successfully updated'
    else
      flash.now[:error] = "Oh noes, something broke! D':"
      render :edit_schedule
    end
  end

  def edit_appointments

  end

  def update_appointments
    if @student.update(appointment_params)
      redirect_to student_path(@student), notice: 'Successfully updated'
    else
      flash.now[:error] = "Oh noes, something broke! D':"
      render :edit_appointments
    end
  end

  def edit_profile

  end

  def update_profile
    if @student.update(profile_params)
      redirect_to @student, notice: 'Successfully updated'
    else
      flash.now[:error] = "Oh noes, something broke! D':"
      render :edit_profile
    end
  end

  def view_eligible_jobs
    flash.now[:alert] = "This page lists the jobs you are eligible based on your GPA (#{@student.gpa}) and the courses you have taken with a passing grade."
  end

  private

  def committee_check
    unless Committee.count > 0
      redirect_to new_committee_path, alert: 'Please create at least 1 committee first!'
    end
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :middle_name, :preferred_name, :ssn, :date_of_birth,
    :place_of_birth, :arkansas_resident, :cell_phone, :work_phone, :email, :current_employer, :length_of_employment, :race,
    :gender, :citizenship, :visa_type, :country_of_citizenship, :requested_admission_year, :mis_program_type, :past_applicant,
    :past_application_date, :past_enrollment, :past_enrollment_date, :enrollment_type, :gmat_date, :gmat_score, :toefl_date,
    :toefl_score, :comments, :status, :alumni, :committee_id, :graduated,
    addresses_attributes: [:kind, :id, :address_line_1, :address_line_2, :city, :state, :country],
    colleges_attributes: [:id, :college_attended, :dates_attended, :gpa, :semester_hours, :degree_major, :current_employment_hours])
  end

  def schedule_params
    params.require(:student).permit(enrollments_attributes: [:id, :term, :grade, :course_id, :_destroy])
  end

  def appointment_params
    params.require(:student).permit(advising_appointments_attributes: [:id, :appointment_time, :_destroy])
  end

  def profile_params
    params.require(:student).permit(:gpa)
  end
end