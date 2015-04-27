class JobPostingsController < ApplicationController

  def index
    @job_postings = JobPosting.all
  end

  def show
    @job_posting = JobPosting.find(params[:id])
  end

  def new
    @job_posting = JobPosting.new
    @courses = Course.all
  end

  def create
    @job_posting = JobPosting.create(job_posting_params)
    if @job_posting.persisted?
      redirect_to @job_posting, notice: 'Job successfully listed'
    else
      flash.now[:error] = "Oh noes, something broke! D':"
      render :new
    end
  end

  def edit
    @job_posting = JobPosting.find(params[:id])
    @courses = Course.all
  end

  def update
    @job_posting = JobPosting.find(params[:id])
    if @job_posting.update(job_posting_params)
      redirect_to @job_posting, notice: 'Job listing successfully updated'
    else
      flash.now[:error] = "Oh noes, something broke! D':"
      render :edit
    end
  end

  private

  def job_posting_params
    params.require(:job_posting).permit(:title, :description, :required_gpa, job_postings_courses_attributes: [:id, :course_id, :_destroy])
  end
end