# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.create(name: "New York", country: "USA", photo: "https://images.unsplash.com/photo-1519501025264-65ba15a82390?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")

City.create(name: "London", country: "UK", photo: "https://cdn.londonandpartners.com/visit/general-london/areas/river/76709-640x360-houses-of-parliament-and-london-eye-on-thames-from-above-640.jpg")

City.create(name: "Dubai", country: "UAE", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTkwI2wujjFKuWmS4VyBZZRj0BZRb2WuLDEV_NnFn9E3qnN3A7U")

City.create(name: "Cairo", country: "Egypt", photo: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.travelandleisure.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F1600x1000%2Fpublic%2F1477597558%2Fgiza-pyramid-EGYPTSECRETS1016.jpg%3Fitok%3D0nX0FAZD&w=400&c=sc&poi=face&q=85')

City.create(name: "Medillen", country: "Colombia", photo: "https://images.unsplash.com/photo-1519501025264-65ba15a82390?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")

User.create!(first_name: "Jerry", last_name: "Huang", user_name: "jhuang9240", password_digest: "123", bio:"Hello world", photo:"https://scontent.fbos1-1.fna.fbcdn.net/v/t1.0-9/p960x960/31855230_10211444081002660_2088790209775796224_o.jpg?_nc_cat=100&_nc_ohc=XInJ6EJeBJwAX9sI5L9&_nc_ht=scontent.fbos1-1.fna&_nc_tp=6&oh=6e22cb87dc9cd9f1cedb512e4d9e9645&oe=5ED1F551", hometown: "New York", age: "28")

User.create(first_name: "Mocha", last_name: "Ali", user_name: "Amazing_Mocha", password_digest: "123", bio:"Hello world", photo:"https://scontent.fbos1-2.fna.fbcdn.net/v/t1.0-1/p240x240/71000419_531421064288637_8191439997199450112_n.jpg?_nc_cat=111&_nc_ohc=7xi9VE2EZRgAX_6xwqz&_nc_ht=scontent.fbos1-2.fna&_nc_tp=6&oh=aa87fc9533336aebe3b371d8b5636fc1&oe=5EC11521", hometown: "New York", age: "31")



50.times do 
    User.create!(first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, user_name: Faker::Name.first_name + "123", password_digest: "123", bio:"Hello people", photo:UiFaces.face, hometown: Faker::Address.country, age: "31")
end