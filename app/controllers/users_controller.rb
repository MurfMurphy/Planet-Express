class UsersController < ApplicationController
    def index
        @user = User.all
        @current_user = current_user
    end
    def profile
        if !current_user
            redirect_to '/'
        end
    end
end
