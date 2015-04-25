# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(
    name: 'The Keg',
    cuisine_type: 'Steakhouse',
    price_range: 4,
    rating: 5,
    capacity: 50,
    opening: 12,
    closing: 24
)
Restaurant.create(
    name: 'McDonald\'s',
    cuisine_type: 'Fast Food',
    price_range: 1,
    rating: 2,
    capacity: 50,
    opening: 12,
    closing: 24
)
Restaurant.create(
    name: 'Chipotle',
    cuisine_type: 'Mexican',
    price_range: 2,
    rating: 5,
    capacity: 50,
    opening: 12,
    closing: 24
)