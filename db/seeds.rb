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
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638360172/production/downloadcindy_no1x4w.jpg', #(Cindy Shermann Photo2)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/images-7_hyfa6k.jpg', #(Wangechi Mutu Collage)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638285625/production/images_koi8zk.jpg', #(Wangechi Mutu Collage)
  'https://res.cloudinary.com/ourtpieces/image/upload/v1638360304/production/installationhello_ofclq8.jpg', #(Random Instillation)
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

emilia = User.create!(email: "emilia@test.com", password: '123123', username: 'Emilia von Auersperg')
emilia.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638369364/production/Emilia.profile_obbpo1.jpg'), filename: 'Emilia.profile_obbpo1.jpg')

emilia_art = Art.create!(
  title: 'Never Changing',
  description: 'Awesome sculpture',
  category: 'Sculpture',
  user_id: emilia.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: emilia.username,
  is_for_auction: [true, false].sample
)
emilia_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638374859/production/EmiliaSculpture_sefash.png'), filename: 'EmiliaSculpture_sefash.png')

puts "Auersperg Sculpture"

emilia_art_two = Art.create!(
  title: 'Night',
  description: 'oil on canvas',
  category: 'Painting',
  user_id: emilia.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: emilia.username,
  is_for_auction: [true, false].sample
)
emilia_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638370019/production/EmiliaArt_e7jqza.jpg'), filename: 'EmiliaArt_e7jqza.jpg')

puts "Auersperg Painting"

erwin = User.create!(email: "erwin@test.com", password: '555555', username: 'Erwin Wurm')
erwin.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638363052/production/wurm_erwin_ihwwu9.jpg'), filename: 'wurm_erwin_ihwwu9.jpg')

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

tati = User.create!(email: "trautt@photography.com", password: '202020', username: 'Tatiana Trauttmansdorff')
tati.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638369529/production/tatimimiprofile_f0ai5a.jpg'), filename: 'tatimimiprofile_f0ai5a.jpg')

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

clara = User.create!(email: "jebsen@photography.com", password: '303030', username: 'Clara Jebsen')
clara.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638363273/production/clara_jebsen_oses0s.jpg'), filename: 'clara_jebsen_oses0s.jpg')

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
clara_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638363529/production/Filippi_ix7bfj.jpg'), filename: 'Filippi_ix7bfj.jpg')

cyrielle = User.create!(email: "gylacsy@art.com", password: '404040', username: 'Cyrielle Gylacsy')
cyrielle.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638369089/production/CyrielleProfile_zfaaln.jpg'), filename: 'CyrielleProfile_zfaaln.jpg')

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
  category: 'Drawing',
  user_id: cyrielle.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: cyrielle.username,
  is_for_auction: [true, false].sample
)
cyrielle_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638370543/production/image_miohdi.jpg'), filename: 'image_miohdi.jpg')

cyrielle_art_three = Art.create!(
  title: 'Space',
  description: 'Space Shot 1/2 pencil on paper',
  category: 'Painting',
  user_id: cyrielle.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: cyrielle.username,
  is_for_auction: [true, false].sample
)
cyrielle_art_three.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638374911/production/CyrielleArt_ucgyqj.jpg'), filename: 'CyrielleArt_ucgyqj.jpg')


cindy = User.create!(email: "sherman@art.com", password: '505050', username: 'Cindy Shermann')
cindy.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638360946/production/shermanpp_c2o2im.jpg'), filename: 'shermanpp_c2o2im.jpg')

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
cindy_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638360172/production/downloadcindy_no1x4w.jpg'), filename: 'downloadcindy_no1x4w.jpg')

puts "Cindy Photography 2"

wangechi = User.create!(email: "mutu@art.com", password: '606060', username: 'Wangechi Mutu')
wangechi.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638368398/production/Wangechi_Mutu_Profile_xuzrwc.jpg'), filename: 'Wangechi_Mutu_Profile_xuzrwc.jpg')


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
wangechi_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638374449/production/collage_mutu_v8mryi.jpg'), filename: 'collage_mutu_v8mryi.jpg')

puts "Wangechi Mutu Collage 1"

wangechi_art_two = Art.create!(
  title: 'Life Force',
  description: 'mixed medium on paper',
  category: 'Mixed Medium',
  user_id: wangechi.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: wangechi.username,
  is_for_auction: [true, false].sample
)
wangechi_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638373930/production/CollageMutu_m0xz5z.jpg'), filename: 'CollageMutu_m0xz5z.jpg')

puts "Wangechi Mutu Collage two"

rolf = User.create!(email: "sachs@art.com", password: '707070', username: 'Rolf Sachs')
rolf.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638362777/production/Rolf-Sachs_Ernesto-Kellenberger_2-635x423_oppqx0.jpg'), filename: 'Rolf-Sachs_Ernesto-Kellenberger_2-635x423_oppqx0.jp')

rolf_art = Art.create!(
  title: 'Remessing',
  description: 'mixed medium on paper',
  category: 'Installation',
  user_id: rolf.id,
  measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
  starting_price: [500, 600, 700, 1000].sample,
  creator: rolf.username,
  is_for_auction: [true, false].sample
)
rolf_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638360304/production/installationhello_ofclq8.jpg'), filename: 'installationhello_ofclq8.jpg')

puts "Gunther Sachs Instillation"

ines = User.create!(email: "longevial@art.com", password: '808080', username: 'Ines Longevial')
ines.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638368561/production/ines-longevial.portrait_smxcp9.webp'), filename: 'ines-longevial.portrait_smxcp9.webp')

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
ines_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638370243/production/PPines_k4ujtn.jpg'), filename: 'PPines_k4ujtn.jpg')

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
ines_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638370169/production/InesPP2_ro2e5g.jpg'), filename: 'InesPP2_ro2e5g.jpg')

puts "Longevial Painting 2"

bea = User.create!(email: "bonafini@art.com", password: '909090', username: 'Beatrice Bonafini')
bea.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638368884/production/Portrait_Bea_wyitzf.jpg'), filename: 'Portrait_Bea_wyitzf.jpg')

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
bea_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638370324/production/BeaArt2_c9xaym.jpg'), filename: 'BeaArt2_c9xaym.jpg')

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
bea_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638370320/production/Beaart_jy6wxr.jpg'), filename: 'Beaart_jy6wxr.jpg')

puts "Bonafini Drawing"

antiques = User.create!(email: "dealerantiques@gmail.com", password: '111111', username: 'Schnabel')
antiques.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638373420/production/schanbel_snbrwe.jpg'), filename: 'schanbel_snbrwe.jpg')

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
antiques_art.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638375131/production/AntiqueVase_gjly0f.jpg'), filename: 'production/AntiqueVase_gjly0f.jpg')

# puts "Antique Sculpture"

# antiques_art_two = Art.create!(
#   title: 'Sculpture 1920',
#   description: 'Portrait A. Schrall 1820',
#   category: 'Antiques',
#   user_id: antiques.id,
#   measurements: ["100x400", "600x750", "1000x1450", "2000x4350"].sample,
#   starting_price: [500, 600, 700, 1000].sample,
#   creator: antiques.username,
#   is_for_auction: [true, false].sample
# )
# antiques_art_two.photo.attach(io: URI.open('https://res.cloudinary.com/ourtpieces/image/upload/v1638287563/production/images-1_v1y6qi.jpg'), filename: 'images-1_v1y6qi.jpg')

# puts "Antique Painnting"
