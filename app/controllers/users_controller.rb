class UsersController < ApplicationController
    def index
        @user = User.all
        @current_user = current_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
            if @user.save
            flash[:notice] = "User created"
            
    end

    def update
        @user = User.find(params[:id])
        user.update(user_params)
        flash[:notice] = "User updated"
    end

    def destroy
        @user = User.find(params[:id]).destroy
        flash[:notice] = "User deleted"
    end

    def user_params
        params.require(:user).permit(:name)
    def profile
        if !current_user
            redirect_to '/'
        end
    end
end
