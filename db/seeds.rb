# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(
    name: 'Jack Astor\'s',
    cuisine_type: 'Bar',
    price_range: 4,
    rating: 5,
    capacity: 150,
    current_capacity: 150,
    opening: 12,
    closing: 24
)
Restaurant.create(
    name: 'Real Sports Bar and Grill',
    cuisine_type: 'Bar',
    price_range: 1,
    rating: 2,
    capacity: 250,
    current_capacity: 250,
    opening: 12,
    closing: 24
)
Restaurant.create(
    name: 'Chipotle',
    cuisine_type: 'Mexican',
    price_range: 2,
    rating: 5,
    capacity: 50,
    current_capacity: 50,
    opening: 12,
    closing: 24
)