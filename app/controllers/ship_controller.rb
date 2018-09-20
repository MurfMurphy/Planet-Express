class ShipController < ApplicationController

    def new
        @ships = Ship.new
    end

    def show
        @ship = Ship.find(params[:id])
    end

    def create
        @ship = Ship.create
    end

    def ship_params
        params.require(:ship).permit()
    end

end
