
puts "\nCreating restaurants ..."
50.times do
    Restaurant.create!(
        name: Faker::Company.name,
        cuisine_type: ['Bar', 'Fast Food', 'Chinese', "Indian", "Thai", "Italian"].sample,
        price_range: rand(1..4),
        rating: rand(1..5),
        capacity: rand(20..150),
        opening: rand(10..12),
        closing: rand(22..24)
    )
    print "|"
end

puts "\nCreating users ..."
100.times do
    User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        city: Faker::Address.city,
        country: "Canada",
        password: "1234"
    )
    print "|"
end

puts "\nCreating reservations ..."
200.times do
    date = DateTime.now + rand(2..10).days

    Reservation.create!(
        restaurant_id: Restaurant.all.sample.id,
        user_id: User.all.sample.id,
        party_size: rand(2..10),
        booking_time: date,
        end_time: date + 2.hours
    )
    print "|"
end