class ShipsController < ApplicationController
    def new
        @ship = Ship.new
    end
    def show
        @ship = Ship.find(params[:id])
    end
    def create
        @ship = Ship.create(ship_params)
        redirect_to '/'
    end
    def edit
        @ship = Ship.find(params[:id])
    end
    def update
        ship = Ship.find(params[:id])
        ship.update(ship_params)
    end
    
    def ship_params
        params.require(:ship).permit(:name, :capacity, :location).merge(user_id: current_user.id)
    end
end
