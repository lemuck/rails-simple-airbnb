# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Flat.destroy_all
12.times {
  flat = Flat.new(name: Faker::Name.first_name, address: Faker::Address.full_address, description: Faker::ChuckNorris.fact, price_per_night: rand(80..180), number_of_guests: rand(2..8))
  flat.save
}
