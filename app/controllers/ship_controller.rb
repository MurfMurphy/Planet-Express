class ShipController < ApplicationController

    def new
        @ships = Ship.new
    end

    def show
        @ship = Ship.find(params[:id])
    end

    def create
        @ship = Ship.create(ship_params)
    end

    def edit
        @ship = Ship.find(params[:id])
    end

    def update
        ship = Ship.find(params[:id])
        ship.update(ship_params)
    end
    
    def ship_params
        params.require(:ship).permit(:name, :capacity, :location, :user_id)
    end

end
