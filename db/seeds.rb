# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seed done"

restaurants_data = [
  { name: "Escargot", address: "123 Rue de la Paix", phone: "0123456789", category: "french" },
  { name: "Corso d'Oro", address: "456 Avenue des Champs-Élysées", phone: "9876543210", category: "italian" },
  { name: "Higuma", address: "789 Boulevard Saint-Michel", phone: "1112223333", category: "japanese" },
  { name: "Frite", address: "101 Rue du Faubourg Saint-Honoré", phone: "4445556666", category: "belgian" },
  { name: "Pas copine", address: "202 Avenue Montaigne", phone: "7778889999", category: "chinese" }
]

restaurants_data.each do |restaurant_attrs|
  Restaurant.create(restaurant_attrs)
end

# require 'faker'

# 5.times do
#   Restaurant.create(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     phone: Faker::PhoneNumber.phone_number,
#     category: Faker::Restaurant.type
#   )
# end
