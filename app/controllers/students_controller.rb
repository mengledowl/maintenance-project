class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to @student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    @student.update(student_params)
    render :show
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :middle_name, :preferred_name, :ssn, :date_of_birth,
    :place_of_birth, :arkansas_resident, :cell_phone, :work_phone, :email, :current_employer, :length_of_employment, :race,
    :gender, :citizenship, :visa_type, :country_of_citizenship, :requested_admission_year, :mis_program_type, :past_applicant,
    :past_application_date, :past_enrollment, :past_enrollment_date, :enrollment_type, :gmat_date, :gmat_score, :toefl_date,
    :toefl_score, :comments, :status, :alumni, :committee_id)
  end
end