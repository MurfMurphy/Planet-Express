class UsersController < ApplicationController
    def index
        @user = User.all
        @current_user = current_user
        @ship = current_user.Ship.all
        @job = current_user.Job.all
    end
    def profile
        if !current_user
            redirect_to '/'
        end
    end
end
