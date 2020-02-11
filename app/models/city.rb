class City < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips



    def weather
    response = Unirest.get "https://community-open-weather-map.p.rapidapi.com/weather?callback=test&id=2172797&units=%2522metric%2522+or+%2522imperial%2522&mode=xml%252C+html&q=New+York%252C+NY",
        headers:{
    "X-RapidAPI-Host" => "community-open-weather-map.p.rapidapi.com",
    "X-RapidAPI-Key" => "79e8994724msh9d1fabde5ed6ebbp1d50f1jsn9248e1921f53"
    }
    end
end
