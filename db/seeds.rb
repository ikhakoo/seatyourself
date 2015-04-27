puts "\nCreating restaurants ..."
5.times do
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
3.times do
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
20.times do
    date = Date.today + rand(0..3).days
    rest = Restaurant.all.sample
    Reservation.create!(
        restaurant: rest,
        user: User.all.sample,
        party_size: rand(2..10),
        date: date,
        time: rand(rest.opening..rest.closing)
    )
    print "|"
end