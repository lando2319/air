Flight.destroy_all

airports = ["ORD", "MDW", "SFO", "LAX", "JFK"]

100.times do
  departure_code, arrival_code = airports.sample(2)
  departure_time = Time.now.beginning_of_day + rand(0..23).hours + rand(0..59).minutes

  Flight.create number: rand(100..999),
                departure_airport: departure_code,
                arrival_airport: arrival_code,
                departs_at: departure_time,
                seats: rand(0..60)
end
puts "#{Flight.count} flights are now in the database."
