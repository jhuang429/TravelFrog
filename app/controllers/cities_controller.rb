class CitiesController < ApplicationController
    before_action :find_city, only: [:show, :edit, :update, :delete]

    def index
        @cities = City.all 
    end

    def show
        if @city.current_user_trip(session[:user_id])
            @trip = @city.current_user_trip(session[:user_id])
        else 
            @trip = Trip.new
        end

    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def delete
    end
    
        




    private 

    def city_params
        params.require(:city).permit(:name, :photo, :country)
    end

    def find_city
        @city = City.find(params[:id])
    end
end


