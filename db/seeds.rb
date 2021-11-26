puts "Cleaning database..."
Art.destroy_all
User.destroy_all
puts "Creating arts and users..."

10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Name.name,
    username: Faker::Internet.username
  )
  puts "Creating users with id #{user.id}"
end

10.times do
  art = Art.create!(
    title: Faker::Space.constellation,
    description: Faker::Lorem.paragraph,
    category: ["paintings", "sculptures", "pottery", "photography", "ceramics"].sample,
    user_id: User.all.sample.id,
    measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
    starting_price: [500, 600, 700, 1000].sample,
    creator: Faker::Artist.name
  )
  puts "Creating arts with id #{art.id}"
end
