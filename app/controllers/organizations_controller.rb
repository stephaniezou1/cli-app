class OrganizationsController < ApplicationController
  
  def index
    @organizations = Organization.all
  end

  def new
    
  end

  def show
  end

  def edit
  end
end
