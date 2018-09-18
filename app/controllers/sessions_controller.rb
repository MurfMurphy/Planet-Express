class SessionsController < ApplicationController
    def destroy
        current_user = nil
        redirect_to '/'
    end
end