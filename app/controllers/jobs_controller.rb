class JobController < ApplicationController
    def new
        @job = Job.new
    end
    def show
        @job = Job.find(params[:id])
    end
    def create
        @job = Job.create(job_params)
    end

    def job_params
        
    end
end
