class ApplicationController < ActionController::Base

    def index
        @volunteers = Volunteer.all 
        @organizations = Organization.all
    end

end
