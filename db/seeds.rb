puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

100.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    stars: rand(1..5),
    chef_name: ['Giorgio', 'Mr Chef', 'Ms Chef', 'Dr Chef'].sample
  )
  puts "Creating restaurant with id #{restaurant.id}"
end

puts "Finished!"
