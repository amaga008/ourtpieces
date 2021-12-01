require 'faker'

puts "Cleaning database..."
Transaction.destroy_all
Art.destroy_all
User.destroy_all
puts "Creating arts and users..."


  user = User.create!(email: "user@gmail.com", password: "123123", username: "Test")
  user.photo.attach(io: File.open('app/assets/images/apicturews/Avatar1.jpg'), filename: 'Avatar1.jpg')


art_photos = [
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285693/production/download-1_xwkmrn.jpg', #(Emilia Auersperg Skulptur)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/download-4_vsle8n.jpg', #(wurm Skulptur)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/images-2_enmv55.jpg', #(wurm Wärmeflasche Skulptur)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/download-1_oh4v37.jpg', #(Random Street Phtography)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285081/production/images_xt70mv.jpg', #(Cyrielle Gylacsi Photography)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638284527/production/images-2_tbjdir.jpg', #(Clara Jebsen Photography)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638359537/production/2400_slptha.jpg', #(Cindy Sherman Photo)'
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/download-2_vlwrzo.jpg', #(Cindy Shermann Photo2)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/images-7_hyfa6k.jpg', #(Wangechi Mutu Collage)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/images_koi8zk.jpg', #(Wangechi Mutu Collage)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/download_ufigsx.jpg', #(Random Instillation)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285693/production/download_c2z6es.jpg', #(Erwin Wurm Instillation)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/download-2_ivajw2.jpg', #(Cyrielle Gylacsi long painting)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/download-1_ncledy.jpg', #(Cyrillle Gylacsi drawing )
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/images-5_kguu8o.jpg', #(Painting Ines Lonegvial)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638284527/production/images_dpoqgz.jpg', #(Instillation Bea Bonafini)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638284527/production/download_xynuv9.jpg', #(Drawing Bea Bonafini)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638284527/production/download-2_u7mruu.jpg', #(Painting Emilia Auerspreg)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/images-3_ho69ax.jpg', #(Painting ines longevial)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638287565/production/images_puyico.jpg', #(Antique Sculpture)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638287563/production/images-1_v1y6qi.jpg', #Antique Oainting)
]

art_filenames = [
  'download-1_xwkmrn.jpg',
  'download-4_vsle8n.jpg',
  'images-2_enmv55.jpg',
  'download-1_oh4v37.jpg',
  'images_xt70mv.jpg',
  'images-2_tbjdir.jpg',
  'download-3_f4ypes.jpg',
  'download-2_vlwrzo.jpg',
  'images-7_hyfa6k.jpg',
  'images_koi8zk.jpg',
  'download_ufigsx.jpg',
  'download_c2z6es.jpg',
  'download-2_ivajw2.jpg',
  'download-1_ncledy.jp',
  'images-5_kguu8o.jpg',
  'images_dpoqgz.jpg',
  'download_xynuv9.jpg',
  'images-1_vb8i6k.jpg',
  'images-3_ho69ax.jpg',
  'images_puyico.jpg',
  'images-1_v1y6qi.jpg',
]

emilia = User.create!(email: "emilia@test.com", password: '123123', username: 'EmiliaAuer')
emilia_art = Art.create!(
  title: 'Emilia Auersperg Skulptur',
  description: 'Awesome sculpture',
  category: 'Sculpture',
  user_id: emilia.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: emilia.username,
  is_for_auction: [true, false].sample
)
emilia_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285693/production/download-1_xwkmrn.jpg'), filename: 'download-1_xwkmrn.jp')

puts "Auersperg Sculpture"

emilia_art_two = Art.create!(
  title: 'Emilia Auersperg Painting',
  description: 'oil on canvas',
  category: 'Painting',
  user_id: emilia.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: emilia.username,
  is_for_auction: [true, false].sample
)
emilia_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638284527/production/download-2_u7mruu.jpg'), filename: 'download-2_u7mruu.jpg')

puts "Auersperg Painting"

erwin = User.create!(email: "erwin@test.com", password: '555555', username: 'ErwinWurm')
erwin_art = Art.create!(
  title: 'Wurm Sculpture',
  description: 'Awesome sculpture',
  category: 'Sculpture',
  user_id: erwin.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: erwin.username,
  is_for_auction: [true, false].sample
)
erwin_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638359006/production/wurms_rh7ozl.jpg'), filename: 'wurms_rh7ozl.jpg')


erwin_art_two = Art.create!(
  title: 'Wurm Sculpture 2',
  description: 'Awesome sculpture',
  category: 'Sculpture',
  user_id: erwin.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: erwin.username,
  is_for_auction: [true, false].sample
)
erwin_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638359337/production/wurm_2_cvxtww.jpg'), filename: 'wurm_2_cvxtww.jpg')

puts "Erwin Wurm Art two"

erwin_art_three = Art.create!(
  title: 'Through my eyes',
  description: 'Instillation beyond',
  category: 'Installation',
  user_id: erwin.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: erwin.username,
  is_for_auction: [true, false].sample
)
erwin_art_three.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285693/production/download_c2z6es.jpg'), filename: 'download_c2z6es.jpg')

puts "Erwin Wurm Instillation"

tati = User.create!(email: "trautt@photography.com", password: '202020', username: 'TatianaTrautt')
tati_art = Art.create!(
  title: 'Street Shot',
  description: 'NY Shot 11',
  category: 'Photography',
  user_id: tati.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: tati.username,
  is_for_auction: [true, false].sample
)
tati_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/download-1_oh4v37.jpg'), filename: 'download-1_oh4v37.jpg')

clara = User.create!(email: "jebsen@photography.com", password: '303030', username: 'ClaraJebsen')
clara_art = Art.create!(
  title: 'Filippa',
  description: 'Series shot in Milan',
  category: 'Photography',
  user_id: clara.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: clara.username,
  is_for_auction: [true, false].sample
)
clara_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638284527/production/images-2_tbjdir.jpg'), filename: 'images-2_tbjdir.jpg')

cyrielle = User.create!(email: "gylacsy@art.com", password: '404040', username: 'CyrielleGylacsy')
cyrielle_art = Art.create!(
  title: 'In a Bubble',
  description: 'Light based',
  category: 'Photography',
  user_id: cyrielle.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: cyrielle.username,
  is_for_auction: [true, false].sample
)
cyrielle_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285081/production/images_xt70mv.jpg'), filename: 'images_xt70mv.jpg')

cyrielle_art_two = Art.create!(
  title: 'Dots',
  description: 'Re-creating the sky I saw on Monday 23rd Novmeber',
  category: 'Painting',
  user_id: cyrielle.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: cyrielle.username,
  is_for_auction: [true, false].sample
)
cyrielle_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/download-2_ivajw2.jpg'), filename: 'download-2_ivajw2.jpg')

cyrielle_art_three = Art.create!(
  title: 'Space',
  description: 'Space Shot 1/2 pencil on paper',
  category: 'Drawing',
  user_id: cyrielle.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: cyrielle.username,
  is_for_auction: [true, false].sample
)
cyrielle_art_three.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/download-1_ncledy.jpg'), filename: 'download-1_ncledy.jpg')


cindy = User.create!(email: "sherman@art.com", password: '505050', username: 'CindyShermann')
cindy_art = Art.create!(
  title: 'Self Portrait',
  description: 'Light based',
  category: 'Photography',
  user_id: cindy.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: cindy.username,
  is_for_auction: [true, false].sample
)
cindy_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638359537/production/2400_slptha.jpg'), filename: '2400_slptha.jpg')

puts "Cindy Shermann Photo"

cindy_art_two = Art.create!(
  title: 'Self Portrait 2/2000',
  description: 'Light based',
  category: 'Photography',
  user_id: cindy.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: cindy.username,
  is_for_auction: [true, false].sample
)
cindy_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/download-2_vlwrzo.jpg'), filename: 'download-2_vlwrzo.jpg')

puts "Cindy Photography 2"

wangechi = User.create!(email: "mutu@art.com", password: '606060', username: 'WangechiMutu')
wangechi_art = Art.create!(
  title: 'Life Loss',
  description: 'mixed medium on paper',
  category: 'Collage',
  user_id: wangechi.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: wangechi.username,
  is_for_auction: [true, false].sample
)
wangechi_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/images-7_hyfa6k.jpg'), filename: 'images-7_hyfa6k.jpg')

puts "Wangechi Mutu Collage 1"

wangechi_art_two = Art.create!(
  title: 'Life Force',
  description: 'mixed medium on paper',
  category: 'Collage',
  user_id: wangechi.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: wangechi.username,
  is_for_auction: [true, false].sample
)
wangechi_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/images_koi8zk.jpg'), filename: 'images_koi8zk.jpg')

puts "Wangechi Mutu Collage two"

gunther = User.create!(email: "sachs@art.com", password: '707070', username: 'GuntherSachs')
gunther_art = Art.create!(
  title: 'Remessing',
  description: 'mixed medium on paper',
  category: 'Installation',
  user_id: gunther.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: gunther.username,
  is_for_auction: [true, false].sample
)
gunther_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/download_ufigsx.jpg'), filename: 'download_ufigsx.jpg')

puts "Gunther Sachs Instillation"

ines = User.create!(email: "longevial@art.com", password: '808080', username: 'InesLongevial')
ines_art = Art.create!(
  title: 'Perspectives',
  description: 'oil on canvas',
  category: 'Painting',
  user_id: ines.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: ines.username,
  is_for_auction: [true, false].sample
)
ines_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/images-5_kguu8o.jpg'), filename: 'images-5_kguu8o.jpg')

puts "Longevial Painting"

ines_art_two = Art.create!(
  title: 'Persona',
  description: 'oil on canvas',
  category: 'Painting',
  user_id: ines.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: ines.username,
  is_for_auction: [true, false].sample
)
ines_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638285082/production/images-5_kguu8o.jpg'), filename: 'images-5_kguu8o.jpg')

puts "Longevial Painting 2"

bea = User.create!(email: "bonafini@art.com", password: '909090', username: 'BeatriceBonafini')
bea_art = Art.create!(
  title: 'Are you ok?',
  description: 'oil on canvas',
  category: 'Installation',
  user_id: bea.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: bea.username,
  is_for_auction: [true, false].sample
)
bea_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638284527/production/images_dpoqgz.jpg'), filename: 'images_dpoqgz.jpg')

puts "Bonafini Instillation"

bea_art_two = Art.create!(
  title: 'Toxic',
  description: 'pencil on paper',
  category: 'Drawing',
  user_id: bea.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: bea.username,
  is_for_auction: [true, false].sample
)
bea_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638284527/production/download_xynuv9.jpg'), filename: 'download_xynuv9.jpg')

puts "Bonafini Drawing"


antiques = User.create!(email: "dealerantiques@gmail.com", password: '111111', username: 'Antuuiqi')
antiques_art = Art.create!(
  title: 'Sculpture 1920',
  description: 'Body',
  category: 'Antiques',
  user_id: antiques.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: antiques.username,
  is_for_auction: [true, false].sample
)
antiques_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638287565/production/images_puyico.jpg'), filename: 'images_puyico.jpg')

puts "Antique Sculpture"

antiques_art_two = Art.create!(
  title: 'Sculpture 1920',
  description: 'Portrait A. Schrall 1820',
  category: 'Antiques',
  user_id: antiques.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: antiques.username,
  is_for_auction: [true, false].sample
)
antiques_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638287563/production/images-1_v1y6qi.jpg'), filename: 'images-1_v1y6qi.jpg')

puts "Antique Painnting"
