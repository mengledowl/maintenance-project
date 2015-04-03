class CommitteesController < ApplicationController
  def index
    @committees = Committee.all
  end

  def show
    @committee = Committee.find(params[:id])
  end

  def new
    @committee = Committee.new
  end

  def create
    @committee = Committee.create(committee_params)

    redirect_to committees_path, notice: 'Committee created.'
  end

  private

  def committee_params
    params.require(:committee).permit(:committee_name)
  end
end