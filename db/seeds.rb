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


art_photos = [
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637927418/development/5ql7dsuigzlp8mgsg9hjy7aelqbe.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637931139/development/warhol_zdmmcp.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637931198/development/Main_Guernica_BAT-10313_16x9_rqc96m.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637931795/development/balloondogyellow_yeg60p.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637931905/development/the-elephants-large_tbrc0h.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637932109/development/H0078-L00897237_vkeudz.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637932237/development/main-image_jgk2gl.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637932552/development/bf4d90163090d04945c40c1bae14146d_ooaxqq.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637932822/development/First-image_Fb-size_grande_gtbewy.jpg',
  'https://res.cloudinary.com/ourtpieces/image/upload/v1637933026/development/Homenaje-a-Miro_nxi2vl.jpg'
]

art_filenames = [
  '5ql7dsuigzlp8mgsg9hjy7aelqbe.jpg',
  'warhol_zdmmcp.jpg',
  'Main_Guernica_BAT-10313_16x9_rqc96m.jpg',
  'balloondogyellow_yeg60p.jpg',
  'the-elephants-large_tbrc0h.jpg',
  'H0078-L00897237_vkeudz.jpg',
  'main-image_jgk2gl.jpg',
  'bf4d90163090d04945c40c1bae14146d_ooaxqq.jpg',
  'First-image_Fb-size_grande_gtbewy.jpg',
  'Homenaje-a-Miro_nxi2vl.jpg'
]

counter = 0

10.times do
  art_file = URI.open("#{art_photos[counter]}")
  art = Art.new(
    title: Faker::Space.constellation,
    description: Faker::Lorem.paragraph,
    category: ["paintings", "sculptures", "pottery", "photography", "ceramics"].sample,
    user_id: User.all.sample.id,
    measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
    starting_price: [500, 600, 700, 1000].sample,
    creator: Faker::Artist.name
  )
  art.photo.attach(io: art_file, filename: art_filenames[counter], content_type: 'image/jpg')
  art.save!

  counter += 1

  puts "Creating arts with id #{art.id}"
end
