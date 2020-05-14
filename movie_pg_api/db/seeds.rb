# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
# Movie.destroy_all
puts "Your data is destroyed"

10.times do
    User.create(email: Faker::Internet.email, password: '1234', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, imageurl: "https://dl.airtable.com/.attachmentThumbnails/1ee9b5b0a9245281bd7857835ef256d8/ebb993b2" )
end

put "User Data Created"