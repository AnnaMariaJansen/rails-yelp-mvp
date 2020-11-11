# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '454', category: 'french' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '54', category: 'italian' }
tiato = { name: "Tiato", address: "Welfenstrasse, Munich", phone_number: '4', category: 'japanese' }
sam = {name: "S.A.M.", address: "Gollierstraße 35, 80339 Munich", phone_number: '8', category: "japanese" }
tam = {name: "T.A.M.", address: "Gollierstraße 102, 80300 Munich", phone_number: '6', category: "japanese" }

[dishoom, pizza_east, tiato, sam, tam].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
