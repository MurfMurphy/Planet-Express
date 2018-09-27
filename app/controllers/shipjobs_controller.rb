class ShipjobsController < ApplicationController

    def new
        @ship_job = ShipJob.new
        @ships = Ship.all
    end
    def create
        @ship_job = ShipJob.new(shipjob_params)
        @ship_job.job_id = params[:job_id]
        if @ship_job.save
            redirect_to '/'
        else 
            flash[:error] = "nope try again."
            redirect_to '/profile'
        end 

    end
    def shipjob_params
        params.require(:ship_job).permit(:ship_id, :job_id)
    end
end