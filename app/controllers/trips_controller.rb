class TripsController < ApplicationController
    before_action :find_trip, only: [:show, :edit, :update, :delete]

    def new
        @trip = Trip.new 
    end

    def create
        @trip = Trip.create(trip_params)
        redirect_to city_path(@trip.city)

    end

    def edit
    end

    def update
        @trip.update(trip_params)

        redirect_to city_path(@trip.city)
    end

    def delete
        city = @trip.city
        @trip.destroy
        redirect_to city_path(city)
    end
    
        




    private 

    def trip_params
        params.require(:trip).permit(:user_id, :city_id, :review, :travelled, :rating)
    end

    def find_trip
        @trip = Trip.find(params[:id])
    end
end
