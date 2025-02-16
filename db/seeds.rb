# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mechanic.destroy_all
Ride.destroy_all

kon = Mechanic.create!(name: "Kon", years_exp: 5 )
ryan = Mechanic.create!(name: "Ryan", years_exp: 1 )
joe = Mechanic.create!(name: "Joe", years_exp: 3 )

kumba = kon.rides.create!(name: "Kumba", thrill_rating: 8, is_open: true)

frogs = Ride.create!(name: "Frogs", thrill_rating: 1, is_open: true)
