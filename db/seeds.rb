# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do |i|

contact= Contact.create(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number, age: rand(18..23))
10.times do |x|
contact.notes.create(body: Faker::ChuckNorris.fact)
end
contact.create_address(city: Faker::Address.city, state: Faker::Address.state)
end
puts Note.all.length
puts "seeded"