class StudentsController < ApplicationController

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
      render :show
    else
      render :edit
    end
  end

  def schedule

  end

  def edit_schedule
    @courses = Course.all
  end

  def update_schedule
    @student.update(schedule_params)

    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :middle_name, :preferred_name, :ssn, :date_of_birth,
    :place_of_birth, :arkansas_resident, :cell_phone, :work_phone, :email, :current_employer, :length_of_employment, :race,
    :gender, :citizenship, :visa_type, :country_of_citizenship, :requested_admission_year, :mis_program_type, :past_applicant,
    :past_application_date, :past_enrollment, :past_enrollment_date, :enrollment_type, :gmat_date, :gmat_score, :toefl_date,
    :toefl_score, :comments, :status, :alumni, :committee_id,
    addresses_attributes: [:type, :id, :address_line_1, :address_line_2, :city, :state, :country])
  end

  def schedule_params
    params.require(:student).permit(enrollments_attributes: [:id, :term, :grade, :course_id])
  end
end