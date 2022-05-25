# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
new_century = { name: "New Century Restaurant", address: "Shop 1/99 Elder Dr, Mawson Lakes SA 5095", phone_number: '08 8285 4890', category: 'chinese' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '12345678', category: 'italian' }
sushi = { name: "Uni Sushi", address: "2/10-16 Light Common, Mawson Lakes SA 5095", phone_number: '0412 496 585', category: 'japanese' }
frenchie = { name: "Frenchie & Co", address: "Unit 4/63 Hamilton Rd, Fairview Park SA 5126", phone_number: '8251 2574', category: 'french' }
waffle = { name: "Waffle King", address: "61 Jetty Rd, Glenelg SA 5045", phone_number: '0413 279 731', category: 'belgian' }

[new_century, pizza_east, sushi, frenchie, waffle].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
