class VolunteersController < ApplicationController
  
  before_action :set_volunteer, only: [:show, :edit, :update, :destroy]
  
  def index
    @volunteers = Volunteer.all
  end

  def show
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.create(volunteer_params)
    if @volunteer.valid?
      redirect_to volunteer_path
    else
      redirect_to new_volunteer_path
    end
  end

  def edit
  end

  def update
    @volunteer.update(volunteer_params)
    redirect_to volunteers_path
  end

  def destroy
    @volunteer.destroy
    redirect_to volunteers_path
  end

  private

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end

  def volunteer_params
    params.require(:volunteer).permit(:full_name, :username)
  end

end
