class AssignmentsController < ApplicationController
  
  before_action :set_volunteer, only: [:show]
  
  def show
    @assignment
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.create(strong_params)
    redirect_to assignment_path
  end


  private

  def strong_params
    params.require(:assignment).permit(:volunteer_id, :task_id)
  end

  def set_assignment
    @assignment = Assignment.find(params[:id])
  end
end
