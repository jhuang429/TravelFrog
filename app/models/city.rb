class City < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips

    def current_user_trip(user)
        self.trips.find do |trip|
            if  trip.user_id == user
                trip
            end
        end
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

    def cheap_flight(user_airport="JFK")

        response = Unirest.get "https://travelpayouts-travelpayouts-flight-data-v1.p.rapidapi.com/v1/prices/cheap?destination=#{self.airport_code}&origin=#{user_airport}&currency=USD&page=None",
    headers:{
        "X-RapidAPI-Host" => ENV['X-RapidAPI-Host'],
        "X-RapidAPI-Key" => ENV['X-RapidAPI-Key'],
        "X-Access-Token" => ENV['X-Access-Token'],
    }

    response.body["data"][self.airport_code]

    end


end
