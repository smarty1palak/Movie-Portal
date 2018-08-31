# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Admin", email: "admin@admin.com", admin: true)
User.create!(name: "palak", email: "smarty1palak@gmail.com", admin: false)
99.times do |n|
  name  = Faker::Name.name
  language = Faker::Name.name
  genre = Faker::Name.name
  Movie.create!(name:  name,
               language: language,
               genre:              genre)
end

movies= Movie.order(:created_at).take(5)

5.times do
  movies.each{ |movie| movie.shows.create!(GOLD_p: false)}
end
