require "open-uri"

puts "Cleaning up users database..."
User.destroy_all
Treatment.destroy_all
puts "User database cleaned"

andreas = User.new(
  first_name: 'Andreas',
  last_name: 'Hoch',
  address: 'Schaafenstraße 7, 50676 Köln',
  birth_date: Date.parse('12-12-1993'),
  phone_number: '+49 173 123456',
  email: 'andreas@hoch.de',
  password: 'andreas',
  password_confirmation: 'andreas'
)
file = URI.open("https://media.licdn.com/dms/image/C4D03AQG0MGuYWqBpKA/profile-displayphoto-shrink_400_400/0/1611306545766?e=1698278400&v=beta&t=VTRkWs2DHdW-7ATAU8VcqnVeZ57nB0LtaXsUcmAnY3A")
andreas.photo.attach(io: file, filename: "andreas.png", content_type: "image/png")
andreas.save!
puts andreas.first_name

nicole = User.new(
  first_name: 'Nicole',
  last_name: 'Deutrich',
  address: 'Maastrichterstraße 21, 50676 Köln',
  birth_date: Date.parse('23-09-1991'),
  phone_number: '+49 171 123456',
  email: 'nicole@deutrich.de',
  password: 'nicole',
  password_confirmation: 'nicole'
)
file = URI.open("https://media.licdn.com/dms/image/D4E03AQH4yorsJofpTA/profile-displayphoto-shrink_400_400/0/1687275644277?e=1698278400&v=beta&t=6VTVjJuaD2V6xF9Izd4cIIUGOAmlSw9WTW1-Q8QZ-YA")
nicole.photo.attach(io: file, filename: "nicole.png", content_type: "image/png")
nicole.save!
puts nicole.first_name

isabel = User.new(
  first_name: 'Isabel',
  last_name: 'Schmidt',
  address: 'Maastrichterstraße 4, 50676 Köln',
  birth_date: Date.parse('14-05-1978'),
  phone_number: '+49 172 123456',
  email: 'isabel@schmidt.de',
  password: 'isabel',
  password_confirmation: 'isabel'
)
file = URI.open("https://img.freepik.com/fotos-kostenlos/attraktive-selbstbewusste-reife-blonde-frau-die-gelbes-kleid-traegt-das-arme-auf-brust-kreuzt-und-gluecklich-in-die-kamera-laechelt-und-in-ihrer-neu-renovierten-wohnung-mit-sofa-und-fenstern-im-hintergrund-aufwirft_343059-2235.jpg?size=626&ext=jpg&uid=R111922769&ga=GA1.2.1135167755.1691244678&semt=ais")
isabel.photo.attach(io: file, filename: "isabel.png", content_type: "image/png")
isabel.save!
puts isabel.first_name

heiko = User.new(
  first_name: 'Heiko',
  last_name: 'Müller',
  address: 'Lützowstraße 38, 50674 Köln',
  birth_date: Date.parse('05-02-1984'),
  phone_number: '+49 170 123456',
  email: 'heiko@mueller.de',
  password: 'heiko1',
  password_confirmation: 'heiko1'
)
file = URI.open("https://img.freepik.com/fotos-kostenlos/das-portraet-eines-gutaussehenden-baertigen-europaeischen-mannes-mit-grauem-haar-und-bartlaecheln-sieht-angenehm-direkt-nach-vorne-aus-wenn-es-gut-gelaunt-ist-traegt-der-glueckliche-tag-eine-brille-und-einen-pullover-die-ueber-der-blauen-wand-isoliert-sind_273609-44285.jpg?size=626&ext=jpg&uid=R111922769&ga=GA1.2.1135167755.1691244678&semt=ais")
heiko.photo.attach(io: file, filename: "heiko.png", content_type: "image/png")
heiko.save!
puts heiko.valid?

puts "Cleaning up treatments database..."
Treatment.destroy_all
puts "Treatments database cleaned"

Treatment.create(
  name: 'Traditional Chinese Accupuncture',
  category: 'Restlessness',
  description: 'Acupuncture is part of the ancient practice of Traditional Chinese medicine. There are many conditions that may benefit from acupuncture, e.g. indigestions or emotional imbalance.',
  address: 'Hohenstaufenring 53, 50674 Köln',
  price: 50,
  duration: 30,
  next_free_spot_timestamp: Date.parse('2023-08-30'),
  user_id: heiko.id
)

Treatment.create(
  name: 'Chinese Herbal Treatment',
  category: 'Indigestions',
  description: 'Traditional Chinese Medicine makes use of herbs and herbal formulas to strengthen organ function and support good health.',
  address: 'Hohenstaufenring 53, 50674 Köln',
  price: 80,
  duration: 50,
  next_free_spot_timestamp: Date.parse('2023-08-28'),
  user_id: heiko.id
)

Treatment.create(
  name: 'Yoga Nidra',
  category: 'Sleeping Problems',
  description: 'The goal of yoga nidra is to promote a profound state of relaxation. Yoga Nidra combines guided mental imagery with a specific yoga posture called Shavasana (or “corpse pose”).',
  address: 'Maastrichter Str. 26, 50672 Köln',
  price: 40,
  duration: 60,
  next_free_spot_timestamp: Date.parse('2023-09-01'),
  user_id: nicole.id
)

Treatment.create(
  name: 'Relaxation Therapy',
  category: 'Indigestions',
  description: 'Relaxation Therapy is designed to reduce physical and mental tension. Techniques can include special breathing practices and progressive muscle relaxation exercises.',
  address: 'Antwerpener Straße 35, 50672 Köln',
  price: 75,
  duration: 50,
  next_free_spot_timestamp: Date.parse('2023-09-07'),
  user_id: isabel.id
)

Treatment.create(
  name: 'Physioenergetics Therapy',
  category: 'Aches & Pains',
  description: 'Physioenergetics therapy uses muscle-monitoring feedback to locate and identify the core stresses, issues and disharmony blocking the bodys natural healing processes.',
  address: 'Antwerpener Straße 35, 50672 Köln',
  price: 75,
  duration: 50,
  next_free_spot_timestamp: Date.parse('2023-09-05'),
  user_id: isabel.id
)

puts "Treatments created"
