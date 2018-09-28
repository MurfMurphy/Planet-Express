class UsersController < ApplicationController
    def index
        @current_user = current_user
        @job = Job.all
    end

    def new
        @user = User.new
    end

    def profile
        if !current_user
            redirect_to '/'
        end
    end
end