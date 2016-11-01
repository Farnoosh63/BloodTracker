# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

levels = [
  ['22', 'Friday, October 28, 2016'],
  ['65', 'Friday, October 28, 2016'],
  ['77', 'Friday, October 28, 2016'],
  ['90', 'Friday, October 28, 2016'],
  ['55', 'Saturday, October 29, 2016'],
  ['34', 'Saturday, October 29, 2016'],
  ['6', 'Saturday, October 29, 2016'],
  ['87', 'Saturday, October 29, 2016'],
  ['12', 'Sunday, October 30, 2016'],
  ['34', 'Sunday, October 30, 2016'],
  ['65', 'Sunday, October 30, 2016'],
  ['76', 'Sunday, October 30, 2016']
]

levels.each do |number, date|
  Level.create( number: number, date: date )
end
