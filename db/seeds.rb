# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Adding restaurants to the database'
puts "Creating 'Colaba' restaurant"
colaba = Restaurant.create!(name: 'Colaba', address: '279 W End Lane', category: 'french')
puts "Created 'Colaba' restaurant"

puts "Creating 'Comfort Burger' restaurant"
comfort_burger = Restaurant.create!(name: 'Comfort Burger', address: '218 W End Lane', category: 'belgian')
puts "Created 'Comfort Burger' restaurant"

puts "Creating 'Queen of Sheeba' restaurant"
queen_of_sheeba = Restaurant.create!(name: 'Queen of Sheeba', address: '12 Fortess Road', category: 'chinese')
puts "Created 'Queen of Sheeba' restaurant"

puts "Creating 'Haku Kitchin' restaurant"
haku_kitchin = Restaurant.create!(name: 'Haku Kitchin', address: '118 Fortress Road', category: 'japanese')
puts "Created 'Haku Kitchin' restaurant"

puts "Creating 'Gloria' restaurant"
gloria = Restaurant.create!(name: 'Gloria', address: '54-56 Great Eastern Street', category: 'italian')
puts "Created 'Gloria' restaurant"
puts 'Finished seeding'
