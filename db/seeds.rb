# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
require 'Set'
100.times do |n|
  four_seats = Faker::Number.number(1)
  six_seats = Faker::Number.number(1)
  eight_seats = Faker::Number.number(1)
  ten_seats = Faker::Number.number(1)
  Seat.create!(
    four_seats: four_seats,
    six_seats: six_seats,
    eight_seats: eight_seats,
    ten_seats: ten_seats,
               )
end
