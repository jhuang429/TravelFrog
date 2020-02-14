class City < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips



    def airportfinderapi
        response = Unirest.get "https://cometari-airportsfinder-v1.p.rapidapi.com/api/airports/by-text?text=#{self.name}",
        headers:{
          "X-RapidAPI-Host" => "cometari-airportsfinder-v1.p.rapidapi.com",
          "X-RapidAPI-Key" => "79e8994724msh9d1fabde5ed6ebbp1d50f1jsn9248e1921f53"
        }
        response.body[0]
    end

    def current_user_trip(user)
        self.trips.find do |trip|
            if  trip.user_id == user
                trip
            end
        end
    end

    def airport_code
        self.airportfinderapi["code"]
    end

    # def country
    #     self.airportfinderapi["countryCode"]
    # end

    def location 
        str = ""
        self.airportfinderapi["location"].each do |k, v|
            str = "Longitude: #{v}, Latitude: #{v}"
        end
        str
    end

    def themes
        self.airportfinderapi["themes"].join(", ")
    end

    # Over all review 
    def avg_rating 
        total = 0
        trips = self.trips.map {|t| t.rating}.compact
            trips.each do |trip|
             total += trip
            end 
        (total / trips.count.to_f) 

    end 

    def cheap_flight

        response = Unirest.get "https://travelpayouts-travelpayouts-flight-data-v1.p.rapidapi.com/v1/prices/cheap?destination=#{selfairport_code}&origin=JFK&currency=USD&page=None",
    headers:{
        "X-RapidAPI-Host" => "travelpayouts-travelpayouts-flight-data-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "79e8994724msh9d1fabde5ed6ebbp1d50f1jsn9248e1921f53",
        "X-Access-Token" => "0f09eec1c74af0f0af0f6d53911b53aa"
    }
    response.body
    end


end
