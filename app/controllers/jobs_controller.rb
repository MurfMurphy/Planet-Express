class JobController < ApplicationController
<<<<<<< HEAD

    def new
        @jobs = Job.new
    end

    def show
        @job = Job.find(params[:id])
    end

=======
    def new
        @job = Job.new
    end
    def show
        @job = Job.find(params[:id])
    end
>>>>>>> 29b54281791a7db9352c9b2bc9add692feaf3bd1
    def create
        @job = Job.create(job_params)
    end

<<<<<<< HEAD
    def edit
        @job = Job.find(params[:id])
    end

    def update
        job = Job.find(params[:id])
        job.update(job_params)
    end


    def job_params
        params.require(:job).permit(:job_desc, :origin, :destination, :cost, :count_needed).merge(user_id: current_user.id)
=======
    def job_params
        
>>>>>>> 29b54281791a7db9352c9b2bc9add692feaf3bd1
    end
end
