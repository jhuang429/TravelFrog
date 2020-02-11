class TripsController < ApplicationController
    before_action :find_trip, only: [:show, :edit, :update, :delete]

    def new
        @trip = Trip.new 
    end

    def create
        @trip = Trip.create(trip_params)

        
    end

    def edit
    end

    def update
    end

    def delete
    end
    
        
    end




    private 

    def trip_params
        params.require(:trip).permit(:user_id, :city_id, :review, :travelled, :rating)
    end

    def find_trip
        @trip = Trip.find(params[:id])
    end
end
