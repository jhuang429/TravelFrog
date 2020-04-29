# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.create(name: "New York", country: "USA", photo: "https://media.architecturaldigest.com/photos/5da74823d599ec0008227ea8/16:9/w_2560%2Cc_limit/GettyImages-946087016.jpg", weather_url: "40d71n74d01/new-york", airport_code: "JFK", currency: "US Dollar")

City.create(name: "London", country: "UK", photo: "https://cdn.londonandpartners.com/visit/general-london/areas/river/76709-640x360-houses-of-parliament-and-london-eye-on-thames-from-above-640.jpg", weather_url: "51d51n0d13/london", airport_code: "LON", currency: "Pound Sterling")

City.create(name: "Dubai", country: "UAE", photo: "https://www.esquireme.com/sites/default/files/styles/full_img/public/images/2019/03/06/Dubai-skyline.jpg?itok=D8BabVzT", weather_url: "25d2055d27/dubai", airport_code: "DXB", currency: "UAE Dirham")

City.create(name: "Cairo", country: "Egypt", photo: 'https://lonelyplanetstatic.imgix.net/marketing/2020/BIT/cities/Cairo_Egypt_shutterstockRF_1037036482.jpg?q=72&sharp=10&w=1330', weather_url: "30d0431d24/cairo", airport_code: "CAI", currency: "Egyptian Pound")

City.create(name: "Medellin", country: "Colombia", photo: "https://www.100resilientcities.org/wp-content/uploads/2017/06/19938712266_3523cafd02_b.jpg", weather_url: "6d25n75d56/medellin", airport_code: "MDE", currency: "Colombian Peso")

City.create(name: "Bangkok", country: "Thailand", photo: "https://images.unsplash.com/photo-1519501025264-65ba15a82390?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", weather_url: "13d76100d50/bangkok", airport_code: "BKK", currency: "Baht")

City.create(name: "Paris", country: "France", photo: "https://www.smartcitiesworld.net/AcuCustom/Sitename/DAM/020/Paris_AdobeStock_264549883_1.jpg", weather_url: "48d862d35/paris", airport_code: "PAR", currency: "Euro")

City.create(name: "Singapore", country: "Singapore", photo: "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2015/10/30/1510/Grand-Hyatt-Singapore-P615-Esplanade.jpg/Grand-Hyatt-Singapore-P615-Esplanade.16x9.jpg?imwidth=1920", weather_url: "1d35103d82/singapore", airport_code: "SIN", currency: "Singapore Dollar")

City.create(name: "Kuala Lumpur", country: "Malaysia", photo: 'https://www.tripsavvy.com/thmb/nkLE7g9PGrU3Ef7MFvgYoz2mmvM=/5000x2812/smart/filters:no_upscale()/kuala-lumpur-klcc-malaysia-7e10a7d390e840b8b9a7453d57ab265d.jpg', weather_url: "3d16101d71/federal-territory-of-kuala-lumpur", airport_code: "KUL", currency: "Malaysian Ringgit")

City.create(name: "Tokyo", country: "Japan", photo: "https://www.omm.com/~/media/images/site/locations/tokyo_780x520px.ashx", weather_url: "35d71139d73/tokyo", airport_code: "TYO", currency: "Yen")

City.create(name: "Istanbul", country: "Turkey", photo: "https://pix10.agoda.net/geo/city/14932/1_14932_02.jpg?s=1920x822", weather_url: "41d0128d98/istanbul", airport_code: "IST", currency: "Turkish Lira")

City.create(name: "Seoul", country: "South Korea", photo: "https://lonelyplanetimages.imgix.net/mastheads/shutterstock_284085128.jpg?fit=crop&w=1920&h=832", weather_url: "37d57126d98/seoul", airport_code: "SEL", currency: "Won")

City.create(name: "Washington DC", country: "USA", photo: "https://lonelyplanetstatic.imgix.net/marketing/2020/BIT/cities/Washington_DC_shutterstockRF_1063696139.jpg?q=72&sharp=10&w=1330&vib=20", weather_url: "38d91n77d04/washington", airport_code: "WAS", currency: "US Dollar")


User.create!(first_name: "Jerry", last_name: "Huang", user_name: "jhuang9240", password: "123", bio:"Hello world", photo:"https://scontent.fbos1-1.fna.fbcdn.net/v/t1.0-9/p960x960/31855230_10211444081002660_2088790209775796224_o.jpg?_nc_cat=100&_nc_ohc=XInJ6EJeBJwAX9sI5L9&_nc_ht=scontent.fbos1-1.fna&_nc_tp=6&oh=6e22cb87dc9cd9f1cedb512e4d9e9645&oe=5ED1F551", hometown: "New York", age: "28", airport: "JFK")

User.create(first_name: "Mocha", last_name: "Ali", user_name: "Amazing_Mocha", password: "123", bio:"Hello world", photo:"https://scontent.fbos1-2.fna.fbcdn.net/v/t1.0-1/p240x240/71000419_531421064288637_8191439997199450112_n.jpg?_nc_cat=111&_nc_ohc=7xi9VE2EZRgAX_6xwqz&_nc_ht=scontent.fbos1-2.fna&_nc_tp=6&oh=aa87fc9533336aebe3b371d8b5636fc1&oe=5EC11521", hometown: "New York", age: "31", airport: "JFK")




50.times do 
    User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_name: Faker::Twitter.screen_name, password: "123", bio:"Hello people", photo:UiFaces.face, hometown: Faker::Address.country, age: "31", airport: "JFK")
end

User.all.each do |user|
    Trip.create(user: user, city: City.all.sample, rating: [1,2,3,4.5].sample, review: Faker::Hipster.paragraph(sentence_count: 3) )
    Trip.create(user: user, city: City.all.sample, rating: [1,2,3,4.5].sample, review: Faker::Hipster.paragraph(sentence_count: 3) )
    Trip.create(user: user, city: City.all.sample, rating: [1,2,3,4.5].sample, review: Faker::Hipster.paragraph(sentence_count: 3) )
end
