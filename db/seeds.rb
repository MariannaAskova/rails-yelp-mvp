# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
mac_donalds = { name: "MacDonalds", address: "123 Broadway, New York 12345", category: "belgian" }
french_roast = { name: "French Roast", address: "756 First st, Chicago 34783", category: "french" }
pekin_duck = { name: "Pekin Duck", address: "9786 Tverskaya st, Moscow 1234567", category: "chinese" }

[dishoom, pizza_east, mac_donalds, french_roast, pekin_duck].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
