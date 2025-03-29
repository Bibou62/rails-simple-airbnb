# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Flat.create!(
#   name: 'Light & Spacious Garden Flat London',
#   address: '10 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 75,
#   number_of_guests: 3
# )
# Flat.create!(
#   name: 'La bonne fourchette',
#   address: '10 rue des restaurants',
#   description: 'On y mange bien',
#   price_per_night: 25,
#   number_of_guests: 2
# )
# Flat.create!(
#   name: 'La procherie',
#   address: 'Troisième porte à gauche',
#   description: 'C est vraiment si vous avez nul part où dormir',
#   price_per_night: 13,
#   number_of_guests: 3
# )
# Flat.create!(
#   name: 'Nuit étoilée',
#   address: '12 allée des peupliers',
#   description: 'Vous ne dormirez pas à la belle étoile',
#   price_per_night: 90,
#   number_of_guests: 3
# )

require 'faker'

puts "Deleting all flats..."
Flat.destroy_all

puts "Creating flats with images..."

4.times do
  Flat.create!(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(50..200),
    number_of_guests: rand(1..6),
    image_url: Faker::LoremFlickr.image(size: "400x300", search_terms: ['apartment'])
  )
end

puts "Flats successfully created!"
