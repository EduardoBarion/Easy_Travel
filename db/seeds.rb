# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

country1 = URI.open("https://www.cvc.com.br/dicas-de-viagem/wp-content/uploads/2021/06/Madrid.jpg")
country2 = URI.open("https://luniverstours.com/wp-content/uploads/2021/08/guia-brasileiro-em-londres-guia-em-londres-passeios-em-londres-1.jpeg")
country3 = URI.open("https://www.submarinoviagens.com.br/media/17699717/shutterstock_422575195.jpg")
country4 = URI.open("https://inforel.org/wp-content/uploads/2022/04/O-Lobo-travestido-de-Cordeiro-como-os-EUA-lucram-com-a-Guerra-reproducao.jpg")
country5 = URI.open("https://cdn.segurospromo.com.br/2019/11/seguro-viagem-alemanha.jpg")
country6 = URI.open("https://vagaspelomundo.com.br/wp-content/uploads/2024/03/belgica-precisa-de-trabalhadores-estrangeiros.jpeg")
country7 = URI.open("https://midias.eurodicas.com.br/wp-content/uploads/2024/07/regioes-de-portugal-1.jpg.webp")
country8 = URI.open("https://tribunademinas.com.br/wp-content/uploads/2023/11/5-cidades-para-conhecer-na-Franca-alem-de-Paris-Mala-de-Aventuras-4.jpg")
country9 = URI.open("https://i.natgeofe.com/n/6c02ad5a-977b-4f12-b9c0-02ffb0736e07/metropolitan-cathedral-zocalo-mexico-city.JPG")
country10 = URI.open("https://likechile.com/wp-content/uploads/2017/05/clima-em-Santiago-do-Chile-1.jpg")
country11 = URI.open("https://s1.static.brasilescola.uol.com.br/be/conteudo/images/807e500dace27730e03388e69edd8dc6.jpg")
country12 = URI.open("https://estivarefratarios.com.br/wp-content/uploads/2019/09/Austr%C3%A1lia-Um-pa%C3%ADs-em-plena-ascens%C3%A3o.png")

newy = URI.open("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEixc0VqgRw_J22Oj90737XWJ_SJngKkiNNUFhNsN_aQYoPViy7FNcDRu7rh3Pg1HrEOpX-7Z7hwug0hyphenhyphenngyAwPSQnK_ZUIjXd489f5vIeaoPzCyzji4iICk0idjjmxKuvAmy8FstUV_Zr4/s1600/new-york-city-wallpaper-tumblr.jpg")
la = URI.open("https://i.ytimg.com/vi/H6-G5L1yrkE/maxresdefault.jpg")
mi = URI.open("https://static.voegol.com.br/voegol/inline-images/Pag-de-Destinos_Miami_CROP-MOBILE.png")
sf = URI.open("https://i.ytimg.com/vi/YE2HYo2ldEA/maxresdefault.jpg")
chi = URI.open("https://i.ytimg.com/vi/LrV0ffEfFQk/maxresdefault.jpg")

sfa1 = URI.open("https://s3.us-west-2.amazonaws.com/images.actiontourguide.com/wp-content/uploads/2021/02/16085355/SF-Golden-Gate-Resized-scaled.jpg")
sfa2 = URI.open("https://www.usatoday.com/gcdn/-mm-/1abbac059a7e6f21ff3aa7e38760a41a48819119/c=0-217-2118-1414/local/-/media/2018/08/17/USATODAY/USATODAY/636701422865855661-GettyImages-632216604.jpg")
sfa3 = URI.open("https://drupal8-prod.visitcalifornia.com/sites/drupal8-prod.visitcalifornia.com/files/VCW_D_SFcity_FishermanWharf_1280x642_sized.jpg")
sfa4 = URI.open("https://media.cntraveler.com/photos/543d39fd00ac583c0af232fb/16:9/w_2560,c_limit/golden%20gate%20park-17.jpg")
sfa5 = URI.open("https://gabreport.com/wp-content/uploads/2011/07/Exploratorium-Future-New-Home-at-Pier-17-Rendered-View-from-the-Waterfront.jpg")
sfa6 = URI.open("https://ychef.files.bbci.co.uk/1280x720/p0h9y5p1.jpg")
sfa7 = URI.open("https://cdn.thatch.in/cdn-cgi/image/width=3840,format=webp/images/149096/3z36pa.png")
sfa8 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Palace_of_Fine_Arts_%2816794p%29.jpg/1200px-Palace_of_Fine_Arts_%2816794p%29.jpg")
sfa9 = URI.open("https://s.hdnux.com/photos/01/32/15/02/23646393/4/rawImage.jpg")
sfa10 = URI.open("https://www.zhotelssf.com/content/uploads/2023/04/Coit-Tower.jpeg")
sfa11 = URI.open("https://images.firstwefeast.com/complex/image/upload/c_fill,dpr_auto,f_auto,fl_lossy,g_face,q_auto,w_1280/igasvpmxawobtfnjdhqq.jpg")
sfa12 = URI.open("https://wineandwhiskeyglobe.com/wp-content/uploads/2024/01/TadichEntry-scaled.jpg")
sfa13 = URI.open("https://s.hdnux.com/photos/60/22/02/15351747/3/1236x0.jpg")
sfa14 = URI.open("https://cdn.vox-cdn.com/thumbor/6WnVyWh9YJdOmV1Aa9XynU3CQ-A=/0x0:960x539/1200x800/filters:focal(404x194:556x346)/cdn.vox-cdn.com/uploads/chorus_image/image/62317581/16195691_1219703074734172_4366605602053428369_n.0.jpg")
sfa15 = URI.open("https://img.delicious.com.au/JH7_hGCi/del/2018/08/swan-oyster-depot-line-by-tristan-lutze-85108-1.jpg")
sfa16 = URI.open("https://res.cloudinary.com/the-infatuation/image/upload/q_auto,f_auto/cms/state-bird-interior-2")
sfa17 = URI.open("https://res.cloudinary.com/the-infatuation/image/upload/q_auto,f_auto/cms/MaryLagier_SF_Saison_Interior_3")
sfa18 = URI.open("https://offloadmedia.feverup.com/secretsanfrancisco.com/wp-content/uploads/2022/12/13023722/photoholgic-fn6x1TL290w-unsplash-1024x577.jpg")
sfa19 = URI.open("https://i0.wp.com/salepepeamore.com/wp-content/uploads/2016/02/91ch-z-cwl1.jpg?fit=2352%2C1376&ssl=1")
sfa20 = URI.open("https://images.otstatic.com/prod1/31869098/4/huge.jpg")

puts 'Cleaning DB...'
Trip.destroy_all
User.destroy_all
Place.destroy_all
City.destroy_all
Country.destroy_all
puts 'DB cleaned.'

puts 'Creating 2 fake users...'
admin = User.new(
  email: 'admin@admin.com',
  password: '123456',
  username: 'Eduzin'
)
admin.save!

user = User.new(
  email: 'user@user.com',
  password: '123456',
  username: 'Duduzin'
)
user.save!
puts 'Fake users created.'

puts 'Creating 12 countries...'

espanha = Country.new(
  name: 'Spain',
  description: 'Discover vibrant Spain: stunning beaches, historic cities, and a rich culture of tapas and flamenco. From Barcelona to Seville, experience a blend of tradition and modernity that promises an unforgettable adventure.'
)
espanha.photo.attach(io: country1, filename: "photo_country.png", content_type: "image/jpg")
espanha.save!

inglaterra = Country.new(
  name: 'England',
  description: 'Explore the diverse United Kingdom: historic landmarks, charming villages, and a vibrant cultural scene. From London’s iconic sights to the scenic beauty of Scotland, experience a rich tapestry of tradition and modernity.'
)
inglaterra.photo.attach(io: country2, filename: "photo_country.png", content_type: "image/jpg")
inglaterra.save!

brasil = Country.new(
  name: 'Brazil',
  description: 'Experience the lively Brazil: breathtaking beaches, vibrant festivals, and a rich cultural heritage. From the Carnival of Rio to the Amazon rainforest, immerse yourself in a country full of color, rhythm, and natural wonders.'
)
brasil.photo.attach(io: country3, filename: "photo_country.png", content_type: "image/jpg")
brasil.save!

usa = Country.new(
  name: 'United States',
  description: 'Discover the vast USA: diverse landscapes, iconic landmarks, and a melting pot of cultures. From the bustling streets of New York to the natural beauty of the Grand Canyon, enjoy a dynamic and varied adventure across this expansive country.'
)
usa.photo.attach(io: country4, filename: "photo_country.png", content_type: "image/jpg")
usa.save!

alemanha = Country.new(
  name: 'Germany',
  description: 'Uncover the charm of Germany: medieval towns, cutting-edge cities, and a rich history. From the fairytale castles of Bavaria to the vibrant culture of Berlin, experience a country where tradition and innovation meet.'
)
alemanha.photo.attach(io: country5, filename: "photo_country.png", content_type: "image/jpg")
alemanha.save!

belgium = Country.new(
  name: 'Belgium',
  description: 'Explore Belgium: a charming blend of medieval towns, impressive architecture, and a rich culinary scene. From Brussels to Bruges, indulge in fine chocolates, waffles, and beers while soaking up the historical and cultural ambiance.'
)
belgium.photo.attach(io: country6, filename: "photo_country.png", content_type: "image/jpg")
belgium.save!

portugal = Country.new(
  name: 'Portugal',
  description: 'Discover Portugal: a captivating destination with stunning coastlines, historic cities, and a vibrant culture. From Lisbon’s charming streets to Porto’s famous wines, enjoy a rich blend of history, tradition, and modern attractions.'
)
portugal.photo.attach(io: country7, filename: "photo_country.png", content_type: "image/jpg")
portugal.save!

france = Country.new(
  name: 'France',
  description: 'Experience France: a country renowned for its exquisite cuisine, iconic landmarks, and world-class art. From Paris’s Eiffel Tower to the vineyards of Bordeaux, immerse yourself in a rich cultural journey full of romance and elegance.'
)
france.photo.attach(io: country8, filename: "photo_country.png", content_type: "image/jpg")
france.save!

mexico = Country.new(
  name: 'Mexico',
  description: 'Uncover Mexico: a vibrant land of rich traditions, colorful festivals, and stunning landscapes. From the ancient ruins of Chichen Itza to the beautiful beaches of Cancun, experience a blend of history, culture, and natural beauty.'
)
mexico.photo.attach(io: country9, filename: "photo_country.png", content_type: "image/jpg")
mexico.save!

chile = Country.new(
  name: 'Chile',
  description: 'Discover Chile: a land of diverse landscapes and rich cultural heritage. From the arid Atacama Desert to the lush vineyards of the Central Valley, explore stunning natural wonders and vibrant cities like Santiago and Valparaíso.'
)
chile.photo.attach(io: country10, filename: "photo_country.png", content_type: "image/jpg")
chile.save!

japan = Country.new(
  name: 'Japan',
  description: 'Explore Japan: a unique blend of ancient traditions and cutting-edge modernity. From the serene temples of Kyoto to the bustling streets of Tokyo, experience a culture of elegance, innovation, and natural beauty.'
)
japan.photo.attach(io: country11, filename: "photo_country.png", content_type: "image/jpg")
japan.save!

australia = Country.new(
  name: 'Australia',
  description: 'Discover Australia: a diverse land of stunning landscapes, vibrant cities, and unique wildlife. From the Great Barrier Reef to Sydney’s iconic Opera House, enjoy a mix of natural wonders and urban adventures in this vast and exciting country.'
)
australia.photo.attach(io: country12, filename: "photo_country.png", content_type: "image/jpg")
australia.save!
puts 'Countries created.'

puts 'Creating 5 USA cities...'
los_angeles = City.create!(
  name: "Los Angeles",
  description: 'Known as the entertainment capital of the world, Los Angeles is home to Hollywood, famous beaches, and a diverse cultural landscape. This sprawling city is renowned for its sunny weather, glamorous lifestyle, and its role as a major hub for the film and television industry.',
  country: usa
)
los_angeles.photo.attach(io: la, filename: "photo_city.png", content_type: "image/jpg")

miami = City.create!(
  name: "Miami",
  description: 'A vibrant coastal city known for its stunning beaches, lively nightlife, and diverse cultural influences, especially from Latin America and the Caribbean. Miami is a hotspot for art, design, and cuisine, with a tropical climate that attracts visitors year-round.',
  country: usa
)
miami.photo.attach(io: mi, filename: "photo_city.png", content_type: "image/jpg")

san_francisco = City.create!(
  name: "San Francisco",
  description: 'Famous for its hilly streets, iconic Golden Gate Bridge, and rich history, San Francisco is a cultural and technological hub. Known for its liberal atmosphere, historic cable cars, and proximity to Silicon Valley, the city offers a unique blend of innovation and tradition.',
  country: usa
)
san_francisco.photo.attach(io: sf, filename: "photo_city.png", content_type: "image/jpg")

chicago = City.create!(
  name: "Chicago",
  description: 'A major city on the shores of Lake Michigan, Chicago is known for its impressive architecture, deep-dish pizza, and a rich cultural scene. The Windy City boasts world-class museums, vibrant neighborhoods, and a strong tradition in music, particularly jazz and blues.',
  country: usa
)
chicago.photo.attach(io: chi, filename: "photo_city.png", content_type: "image/jpg")

ny = City.create!(
  name: 'New York',
  description: 'An iconic global city, famous for its towering skyline, landmarks such as the Statue of Liberty and Central Park, and a vibrant cultural scene that includes world-class theaters, museums, and art galleries. New York is a bustling metropolis known for its diversity, energy, and as a hub for business, fashion, and entertainment.',
  country: usa
)
ny.photo.attach(io: newy, filename: "photo_city.png", content_type: "image/jpg")
puts 'Cities created.'

puts 'Creating 10 attractions for San Francisco...'
sanfran1 = Place.new(
  name: 'Golden Gate Bridge',
  address: 'San Francisco, CA, USA',
  price: 100.00,
  description: 'An iconic suspension bridge offering stunning views of the bay and city. A must-see landmark of San Francisco.',
  review: 'Walking across the Golden Gate Bridge is an unforgettable experience with breathtaking views.',
  city: san_francisco
)
sanfran1.photo.attach(io: sfa1, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran1.save!

sanfran2 = Place.new(
  name: 'Alcatraz Island',
  address: 'San Francisco, CA, USA',
  price: 39.00,
  description: 'A former prison turned museum, located on an island in the bay. Known for its intriguing history and captivating tours.',
  review: 'An eerie but fascinating visit. The audio tour provides a deep insight into the lives of former inmates.',
  city: san_francisco
)
sanfran2.photo.attach(io: sfa2, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran2.save!

sanfran3 = Place.new(
  name: "Fisherman's Wharf",
  address: 'San Francisco, CA, USA',
  price: 100.00,
  description: 'A bustling waterfront area known for its seafood, shopping, and street performances. Home to Pier 39 and the sea lions.',
  review: 'A lively area with plenty to see and do. Great for a leisurely stroll and enjoying fresh seafood.',
  city: san_francisco
)
sanfran3.photo.attach(io: sfa3, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran3.save!

sanfran4 = Place.new(
  name: 'Golden Gate Park',
  address: 'San Francisco, CA, USA',
  price: 100.00,
  description: 'A large urban park with gardens, museums, and recreational areas. Ideal for outdoor activities and relaxation.',
  review: 'A beautiful park with something for everyone. The Japanese Tea Garden is a highlight.',
  city: san_francisco
)
sanfran4.photo.attach(io: sfa4, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran4.save!

sanfran5 = Place.new(
  name: 'Exploratorium',
  address: 'Pier 15, San Francisco, CA, USA',
  price: 30.00,
  description: 'An interactive science museum offering hands-on exhibits for all ages. A great place to explore and learn through play.',
  review: 'An engaging experience for both kids and adults. Interactive exhibits make learning fun.',
  city: san_francisco
)
sanfran5.photo.attach(io: sfa5, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran5.save!

sanfran6 = Place.new(
  name: 'Chinatown',
  address: 'San Francisco, CA, USA',
  price: 80.00,
  description: 'The oldest and one of the largest Chinatowns in North America. Known for its vibrant culture, shops, and restaurants.',
  review: 'A colorful neighborhood with excellent food and unique shops. A must-visit for experiencing local culture.',
  city: san_francisco
)
sanfran6.photo.attach(io: sfa6, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran6.save!
sanfran7 = Place.new(

  name: 'San Francisco- MOMA',
  address: '151 3rd St, San Francisco, CA, USA',
  price: 25.00,
  description: 'A major modern art museum featuring works by renowned artists such as Jackson Pollock and Andy Warhol.',
  review: 'A top-notch museum with impressive exhibits. Perfect for art lovers and modern art enthusiasts.',
  city: san_francisco
)
sanfran7.photo.attach(io: sfa7, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran7.save!

sanfran8 = Place.new(
  name: 'Palace of Fine Arts',
  address: '3301 Lyon St, San Francisco, CA, USA',
  price: 40.00,
  description: 'A stunning Beaux-Arts structure surrounded by a lagoon. A picturesque spot for leisurely walks and photography.',
  review: 'A beautiful and serene location. Ideal for a relaxing walk or a peaceful picnic.',
  city: san_francisco
)
sanfran8.photo.attach(io: sfa8, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran8.save!

sanfran9 = Place.new(
  name: 'Cable Car Ride',
  address: 'San Francisco, CA, USA',
  price: 85.00,
  description: "Experience a historic and scenic ride on San Francisco\'s famous cable cars. A fun way to explore the city's hills.",
  review: 'A quintessential San Francisco experience. Enjoy the unique charm and views of the city.',
  city: san_francisco
)
sanfran9.photo.attach(io: sfa9, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran9.save!

sanfran10 = Place.new(
  name: 'Coit Tower',
  address: '1 Telegraph Hill Blvd, San Francisco, CA, USA',
  price: 10.00,
  description: 'A historic tower offering panoramic views of the city and bay. Features murals from the 1930s inside.',
  review: 'Great views and interesting history. The murals inside are a nice bonus.',
  city: san_francisco
)
sanfran10.photo.attach(io: sfa10, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran10.save!
puts 'Attractions for San Francisco created.'

puts 'Creating 10 restaurants for San Francisco...'
sanfran11 = Place.new(
  name: 'Zuni Café',
  address: '1658 Market St, San Francisco, CA, USA',
  price: 75.00,
  description: 'A beloved restaurant known for its wood-fired pizzas and roasted chicken, offering a cozy and inviting atmosphere.',
  review: 'The roasted chicken is legendary, and the ambiance is perfect for a relaxed dining experience.',
  city: san_francisco
)
sanfran11.photo.attach(io: sfa11, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran11.save!

sanfran12 = Place.new(
  name: 'Tadich Grill',
  address: '240 California St, San Francisco, CA, USA',
  price: 70.00,
  description: "San Francisco's oldest restaurant, famous for its seafood and classic American dishes, with a historic charm.",
  review: 'A historic gem with outstanding seafood. The cioppino is a must-try.',
  city: san_francisco
)
sanfran12.photo.attach(io: sfa12, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran12.save!

sanfran13 = Place.new(
  name: 'Gary Danko',
  address: '800 N Point St, San Francisco, CA, USA',
  price: 250.00,
  description: 'An upscale restaurant known for its fine dining and exceptional service, featuring a menu of French and American cuisine.',
  review: 'An exquisite dining experience with impeccable service. Perfect for special occasions.',
  city: san_francisco
)
sanfran13.photo.attach(io: sfa13, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran13.save!

sanfran14 = Place.new(
  name: 'La Taqueria',
  address: '2889 Mission St, San Francisco, CA, USA',
  price: 15.00,
  description: 'A popular spot for authentic Mexican tacos and burritos, renowned for its flavorful and fresh ingredients.',
  review: 'The best tacos in San Francisco! Always fresh and incredibly tasty.',
  city: san_francisco
)
sanfran14.photo.attach(io: sfa14, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran14.save!

sanfran15 = Place.new(
  name: 'Swan Oyster Depot',
  address: '1517 Polk St, San Francisco, CA, USA',
  price: 50.00,
  description: 'A no-frills seafood spot famous for its fresh oysters, clam chowder, and seafood salads.',
  review: 'Fantastic seafood in a casual setting. The oysters are incredibly fresh and delicious.',
  city: san_francisco
)
sanfran15.photo.attach(io: sfa15, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran15.save!

sanfran16 = Place.new(
  name: 'State Bird Provisions',
  address: '1529 Fillmore St, San Francisco, CA, USA',
  price: 100.00,
  description: 'A unique dining experience offering a range of inventive American dishes served dim sum-style.',
  review: 'A creative and delightful dining experience. The dim sum-style service adds a fun twist.',
  city: san_francisco
)
sanfran16.photo.attach(io: sfa16, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran16.save!

sanfran17 = Place.new(
  name: 'Saison',
  address: '178 Townsend St, San Francisco, CA, USA',
  price: 300.00,
  description: 'A high-end restaurant specializing in modern American cuisine with a focus on seasonal and locally sourced ingredients.',
  review: 'An unforgettable culinary experience with a focus on exceptional flavors and presentation.',
  city: san_francisco
)
sanfran17.photo.attach(io: sfa17, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran17.save!

sanfran18 = Place.new(
  name: 'Nopa',
  address: '560 Divisadero St, San Francisco, CA, USA',
  price: 50.00,
  description: 'A trendy spot known for its organic and locally sourced dishes, offering a relaxed atmosphere and excellent service.',
  review: 'Great food with a laid-back vibe. The organic ingredients make a noticeable difference in flavor.',
  city: san_francisco
)
sanfran18.photo.attach(io: sfa18, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran18.save!

sanfran19 = Place.new(
  name: 'The Slanted Door',
  address: '1 Ferry Building #3, San Francisco, CA, USA',
  price: 60.00,
  description: 'A modern Vietnamese restaurant offering fresh and flavorful dishes with a focus on local ingredients.',
  review: 'Innovative Vietnamese cuisine with fresh ingredients. The flavors are vibrant and delicious.',
  city: san_francisco
)
sanfran19.photo.attach(io: sfa19, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran19.save!

sanfran20 = Place.new(
  name: 'Boulevard',
  address: '1 Mission St, San Francisco, CA, USA',
  price: 150.00,
  description: 'An elegant restaurant offering a sophisticated menu of French-inspired cuisine and a romantic setting.',
  review: 'Perfect for a special night out. The food is exceptional, and the atmosphere is charming.',
  city: san_francisco
)
sanfran20.photo.attach(io: sfa20, filename: "photo_attractions.png", content_type: "image/jpg")
sanfran20.save!
puts 'Restaurants for San Francisco created.'
