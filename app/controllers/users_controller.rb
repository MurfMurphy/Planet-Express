class UsersController < ApplicationController
    def index
        @current_user = current_user
        @user = current_user
        @shipjobs = ShipJob.all
        @job = Job.all
    end
    def profile
        if !current_user
            redirect_to '/'
        end
    end
end