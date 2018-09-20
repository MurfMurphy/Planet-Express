class JobsController < ApplicationController

    def new
        @jobs = Job.new
    end

    def show
        @job = Job.find(params[:id])
    end

    def create
        @job = Job.create(job_params)
    end

    def edit
        @job = Job.find(params[:id])
    end

    def update
        job = Job.find(params[:id])
        job.update(job_params)
    end


    def job_params
        params.require(:job).permit(:user_id, :job_desc, :origin, :destination, :cost, :count_needed)
    end
end