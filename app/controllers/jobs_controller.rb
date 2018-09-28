class JobsController < ApplicationController

    def new
        if !user_signed_in?
            redirect_to '/'
        end
        @job = Job.new
    end

    def show
        @job = Job.find(params[:id])
    end

    def create
        @job = Job.create(job_params)
        redirect_to '/'
    end

    def edit
        @user = current_user
        @job = Job.find(params[:id])
    end

    def update
        job = Job.find(params[:id])
        job.update(job_params)
    end


    def job_params
        params.require(:job).permit(:job_desc, :origin, :destination, :cost, :count_needed).merge(user_id: current_user.id)
    end
end
