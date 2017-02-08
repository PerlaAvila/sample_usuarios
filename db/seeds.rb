# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Admin",
             email: "admin@peruli.org")

UserFlight.create(user_id: 1, flight_id: 1)
Flight.create(destiny: "Miami", date:"2017-05-18", seats: 30, price: 250)

Booking.create(flight_id: 1)

UserBooking.create(booking_id:1, user_id:1)