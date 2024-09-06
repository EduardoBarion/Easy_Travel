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

country1 = URI.open("https://cdn.pixabay.com/photo/2016/10/21/19/05/spain-1758851_1280.png")
country2 = URI.open("https://img.freepik.com/vetores-premium/bandeira-no-mapa-da-inglaterra-em-fundo-cinza_8559-94.jpg")
country3 = URI.open("https://logisber.com/contenido/subidas/2022/10/exportar-a-brasil.jpg")
country4 = URI.open("https://img.freepik.com/vetores-premium/icone-de-mapa-de-pais-dos-eua-com-as-cores-da-bandeira-dos-eua_24911-4698.jpg")
country5 = URI.open("https://www.coladaweb.com/wp-content/uploads/2014/12/Mapa-Alemanha.png")
berlim = URI.open("https://pontospravoar.com/wp-content/uploads/2023/07/Berlim.jpg")
munique = URI.open("https://wp.rotadeferias.com.br/wp-content/uploads/2022/10/Depositphotos_197063222_L.jpg")

attraction1 = URI.open("https://pontospravoar.com/wp-content/uploads/2023/07/Berlim.jpg")
attraction2 = URI.open("https://media.istockphoto.com/id/489776362/pt/foto/panorama-de-horizonte-de-berlim-com-torre-de-televis%C3%A3o-ao-p%C3%B4r-do-sol-alemanha.jpg?s=612x612&w=0&k=20&c=JsSZwxEuELzIQbAfyFGmndwv0g9Rpds3YfgipAsoqO4=")
attraction3 = URI.open("https://cdn.britannica.com/58/176458-050-AEFE3264/Ishtar-Gate-Berlin-Pergamon-Museum.jpg")
attraction4 = URI.open("https://cdn.forevervacation.com/uploads/digital/assets/berlin-wall-memorial.jpeg")
attraction5 = URI.open("https://cdn.pixabay.com/photo/2019/08/09/09/31/checkpoint-charlie-4394712_960_720.jpg")

attraction6 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdKmfJc1vHX7DrDADIMin-XlPnsr9YV2excg&s")
attraction7 = URI.open("https://turismo.eurodicas.com.br/wp-content/uploads/2023/12/ilha-dos-museus-em-berlim.jpeg")
attraction8 = URI.open("https://images.musement.com/cover/0002/65/east-side-gallery-berlin_header-164457.jpeg")
attraction9 = URI.open("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/11/c3/ae/48.jpg")
attraction10 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/141227_Berliner_Dom.jpg/1200px-141227_Berliner_Dom.jpg")

puts 'Cleaning DB...'
Membership.destroy_all
Group.destroy_all
Plan.destroy_all
Trip.destroy_all
User.destroy_all
Place.destroy_all
City.destroy_all
Country.destroy_all
puts 'DB cleaned.'

puts 'Creating 2 fake users...'
admin = User.new(
  email: 'admin@admin.com',
  password: '123456'
)
admin.save!

user = User.new(
  email: 'user@user.com',
  password: '123456'
)
user.save!
puts 'Fake users created.'

puts 'Creating 4 countries...'
espanha = Country.new(
  name: 'Espanha',
  description: 'Explore a vibrante Espanha: praias deslumbrantes, cidades históricas e uma rica cultura de tapas e flamenco. De Barcelona a Toledo, uma experiência inesquecível.'
)
espanha.photo.attach(io: country1, filename: "photo_country.png", content_type: "image/jpg")
espanha.save!

inglaterra = Country.new(
  name: 'Inglaterra',
  description: 'Descubra a encantadora Inglaterra: ruas históricas de Londres, castelos majestosos e a beleza dos Cotswolds. Uma mistura perfeita de charme e tradição.'
)
inglaterra.photo.attach(io: country2, filename: "photo_country.png", content_type: "image/jpg")
inglaterra.save!

brasil = Country.new(
  name: 'Brasil',
  description: 'Descubra o vibrante Brasil: praias paradisíacas do Rio de Janeiro, a exuberância da Floresta Amazónica e a cultura rica do Nordeste. Uma mistura fascinante de natureza exuberante e diversidade cultural.'
)
brasil.photo.attach(io: country3, filename: "photo_country.png", content_type: "image/jpg")
brasil.save!

usa = Country.new(
  name: 'EUA',
  description: 'Aventure-se pelos Estados Unidos: paisagens espetaculares, grandes cidades e parques nacionais. De Nova York à Califórnia, descubra a diversidade e o dinamismo.'
)
usa.photo.attach(io: country4, filename: "photo_country.png", content_type: "image/jpg")
usa.save!

alemanha = Country.new(
  name: 'Alemanha',
  description: 'Experimente a Alemanha: castelos de contos de fadas, cidades vibrantes e uma cultura rica. De Berlim a Munique, um mergulho fascinante na história e modernidade.'
)
alemanha.photo.attach(io: country5, filename: "photo_country.png", content_type: "image/jpg")
alemanha.save!
puts 'Countries created.'

puts 'Creating 2 cities for each country...'
barcelona = City.new(
  name: 'Barcelona',
  description: 'Uma cidade costeira famosa por suas obras arquitetônicas de Gaudí, praias ensolaradas e vida noturna animada.',
  country: espanha
)
barcelona.save!

madrid = City.new(
  name: 'Madrid',
  description: 'A vibrante capital da Espanha, conhecida por sua rica herança cultural, museus renomados e arquitetura impressionante.',
  country: espanha
)
madrid.save!

londres = City.new(
  name: 'Londres',
  description: 'A capital icônica da Inglaterra, famosa por sua história rica, marcos como o Big Ben e o Palácio de Buckingham, e uma cena cultural vibrante, incluindo teatros, museus e galerias de arte de classe mundial.',
  country: inglaterra
)
londres.save!

bath = City.new(
  name: 'Bath',
  description: 'Uma charmosa cidade na Inglaterra, famosa por suas termas romanas bem preservadas, arquitetura georgiana distinta e paisagens pitorescas.',
  country: inglaterra
)
bath.save!

ny = City.new(
  name: 'Nova York',
  description: 'A capital icônica da Inglaterra, famosa por sua história rica, marcos como o Big Ben e o Palácio de Buckingham, e uma cena cultural vibrante, incluindo teatros, museus e galerias de arte de classe mundial.',
  country: usa
)
ny.save!

lasvegas = City.new(
  name: 'Las vegas',
  description: 'Uma charmosa cidade na Inglaterra, famosa por suas termas romanas bem preservadas, arquitetura georgiana distinta e paisagens pitorescas.',
  country: usa
)
lasvegas.save!

berlin = City.new(
  name: 'Berlin',
  description: 'A capital dinâmica da Alemanha, famosa por sua história profunda, marcos icônicos como o Portão de Brandemburgo e o Muro de Berlim, além de uma cena cultural vibrante com museus, galerias e vida noturna diversificada.',
  country: alemanha
)
berlin.photo.attach(io: berlim, filename: "photo_country.png", content_type: "image/jpg")
berlin.save!

munich = City.new(
  name: 'Munique',
  description: 'A encantadora capital da Baviera, conhecida por sua rica herança cultural, cervejarias históricas, festivais famosos como a Oktoberfest e uma combinação única de tradição e modernidade em suas paisagens e arquitetura.',
  country: alemanha
)
munich.photo.attach(io: munique, filename: "photo_country.png", content_type: "image/jpg")
munich.save!
puts 'Countries created.'

puts 'Creating 10 attractions for every city...'
barcelona1 = Place.new(
  name: 'Sagrada Família',
  address: 'Carrer de Mallorca, 401, 08013 Barcelona, Espanha',
  price: 26.00,
  description: 'Uma das obras-primas de Antoni Gaudí, uma basílica impressionante e icônica com arquitetura única e detalhes elaborados.',
  review: 'Uma visita obrigatória em Barcelona, com sua arquitetura extraordinária e construção ainda em andamento.',
  city: barcelona
)
barcelona1.save!

barcelona2 = Place.new(
  name: 'Parc Güell',
  address: 'Carrer d\'Olot, 5, 08024 Barcelona, Espanha',
  price: 10.00,
  description: 'Um parque público projetado por Antoni Gaudí, conhecido por seus mosaicos coloridos e formas arquitetônicas inusitadas.',
  review: 'Um lugar encantador para passeios, com vistas panorâmicas e uma arquitetura vibrante e divertida.',
  city: barcelona
)
barcelona2.save!

barcelona3 = Place.new(
  name: 'La Rambla',
  address: 'La Rambla, 08002 Barcelona, Espanha',
  price: 0.00,
  description: 'Uma famosa avenida em Barcelona, repleta de lojas, restaurantes e artistas de rua, perfeita para passeios e compras.',
  review: 'O coração vibrante de Barcelona, ótimo para explorar a vida urbana e absorver a atmosfera local.',
  city: barcelona
)
barcelona3.save!

barcelona4 = Place.new(
  name: 'Casa Batlló',
  address: 'Passeig de Gràcia, 43, 08007 Barcelona, Espanha',
  price: 35.00,
  description: 'Um dos edifícios mais icônicos de Antoni Gaudí, conhecido por suas fachadas coloridas e design inovador.',
  review: 'Uma experiência fascinante com uma arquitetura inovadora e interior deslumbrante.',
  city: barcelona
)
barcelona4.save!

barcelona5 = Place.new(
  name: 'Casa Milà (La Pedrera)',
  address: 'Passeig de Gràcia, 92, 08008 Barcelona, Espanha',
  price: 25.00,
  description: 'Outro marco de Gaudí, famoso por sua fachada ondulada e interiores distintos, oferecendo uma visão única da arquitetura modernista.',
  review: 'Uma peça de arquitetura impressionante com um design muito diferente do convencional.',
  city: barcelona
)
barcelona5.save!

barcelona6 = Place.new(
  name: 'Museu Picasso',
  address: 'Carrer Montcada, 15-23, 08003 Barcelona, Espanha',
  price: 12.00,
  description: 'Museu dedicado a Pablo Picasso, com uma vasta coleção de suas obras e uma visão profunda sobre sua evolução artística.',
  review: 'Uma excelente forma de explorar a trajetória de Picasso e apreciar suas obras mais importantes.',
  city: barcelona
)
barcelona6.save!

barcelona7 = Place.new(
  name: 'Parc de la Ciutadella',
  address: 'Passeig de Picasso, 21, 08003 Barcelona, Espanha',
  price: 0.00,
  description: 'Um grande parque urbano no centro de Barcelona, ideal para passeios, piqueniques e relaxamento.',
  review: 'Um espaço verde maravilhoso para escapar da agitação da cidade e desfrutar da natureza.',
  city: barcelona
)
barcelona7.save!

barcelona8 = Place.new(
  name: 'Camp Nou',
  address: 'Carrer d\'Aristides Maillol, 12, 08028 Barcelona, Espanha',
  price: 25.00,
  description: 'O icônico estádio do FC Barcelona, oferecendo tours e uma visão fascinante da história do clube.',
  review: 'Um paraíso para os fãs de futebol e uma visita obrigatória para os admiradores do FC Barcelona.',
  city: barcelona
)
barcelona8.save!

barcelona9 = Place.new(
  name: 'Mercado de La Boqueria',
  address: 'La Rambla, 91, 08001 Barcelona, Espanha',
  price: 0.00,
  description: 'Um vibrante mercado de alimentos em La Rambla, conhecido por sua variedade de produtos frescos e tapas.',
  review: 'Um local ideal para experimentar as delícias locais e vivenciar a atmosfera animada de um mercado espanhol.',
  city: barcelona
)
barcelona9.save!

barcelona10 = Place.new(
  name: 'Gothic Quarter (Barri Gòtic)',
  address: 'Barri Gòtic, 08002 Barcelona, Espanha',
  price: 0.00,
  description: 'O bairro medieval de Barcelona, repleto de ruas estreitas, praças encantadoras e edifícios históricos.',
  review: 'Um labirinto de história e cultura, ótimo para explorar a arquitetura antiga e absorver o charme da cidade.',
  city: barcelona
)
barcelona10.save!

madrid1 = Place.new(
  name: 'Museu do Prado',
  address: 'Calle de Felipe IV, s/n, 28014 Madrid, Espanha',
  price: 15.00,
  description: 'O principal museu de arte de Madrid, conhecido por sua vasta coleção de obras-primas europeias, incluindo pinturas de Velázquez e Goya.',
  review: 'Um dos museus mais impressionantes da Europa, com uma coleção de arte excepcional.',
  city: madrid
)
madrid1.save!

madrid2 = Place.new(
  name: 'Palácio Real de Madrid',
  address: 'Calle de Bailén, s/n, 28071 Madrid, Espanha',
  price: 13.00,
  description: 'A residência oficial dos reis da Espanha, um palácio grandioso com impressionantes salões e jardins.',
  review: 'Uma visita obrigatória para apreciar a opulência e a história real de Madrid.',
  city: madrid
)
madrid2.save!

madrid3 = Place.new(
  name: 'Parque do Retiro',
  address: 'Plaza de la Independencia, 7, 28001 Madrid, Espanha',
  price: 0.00,
  description: 'Um grande parque urbano no centro de Madrid, perfeito para passeios relaxantes, passeios de barco e apreciar a natureza.',
  review: 'Um oásis de tranquilidade no coração da cidade, ótimo para um passeio ao ar livre.',
  city: madrid
)
madrid3.save!

madrid4 = Place.new(
  name: 'Museu Nacional Centro de Arte Reina Sofia',
  address: 'Calle de Santa Isabel, 52, 28012 Madrid, Espanha',
  price: 10.00,
  description: 'Museu dedicado à arte moderna e contemporânea, conhecido por abrigar o famoso "Guernica" de Picasso.',
  review: 'Uma galeria fascinante com algumas das obras mais importantes da arte moderna.',
  city: madrid
)
madrid4.save!

madrid5 = Place.new(
  name: 'Templo de Debod',
  address: 'Calle de Ferraz, 1, 28008 Madrid, Espanha',
  price: 0.00,
  description: 'Templo egípcio antigo que foi reconstruído em Madrid, oferecendo uma vista única e uma experiência histórica.',
  review: 'Um lugar único para conhecer a história egípcia e desfrutar de vistas panorâmicas da cidade.',
  city: madrid
)
madrid5.save!

madrid6 = Place.new(
  name: 'Gran Vía',
  address: 'Gran Vía, 28013 Madrid, Espanha',
  price: 0.00,
  description: 'Uma das avenidas mais importantes de Madrid, conhecida por seus edifícios imponentes, teatros e lojas.',
  review: 'Ótima para compras, entretenimento e sentir a vibração de Madrid.',
  city: madrid
)
madrid6.save!

madrid7 = Place.new(
  name: 'Praça Mayor',
  address: 'Plaza Mayor, 28012 Madrid, Espanha',
  price: 0.00,
  description: 'Uma grande praça retangular no centro histórico de Madrid, cercada por edifícios históricos e cheia de cafés e restaurantes.',
  review: 'Um ótimo lugar para apreciar a arquitetura e a atmosfera vibrante de Madrid.',
  city: madrid
)
madrid7.save!

madrid8 = Place.new(
  name: 'Estádio Santiago Bernabéu',
  address: 'Avenida de Concha Espina, 1, 28036 Madrid, Espanha',
  price: 25.00,
  description: 'O icônico estádio do Real Madrid, oferecendo tours e uma visão da história do futebol.',
  review: 'Um paraíso para os fãs de futebol e uma experiência impressionante para todos.',
  city: madrid
)
madrid8.save!

madrid9 = Place.new(
  name: 'Museu Thyssen-Bornemisza',
  address: 'Paseo del Prado, 8, 28014 Madrid, Espanha',
  price: 13.00,
  description: 'Museu de arte com uma vasta coleção de obras de diferentes períodos, incluindo desde o Renascimento até o século XX.',
  review: 'Uma excelente adição ao circuito de museus de Madrid com uma coleção diversificada e de alta qualidade.',
  city: madrid
)
madrid9.save!

madrid10 = Place.new(
  name: 'Mercado de San Miguel',
  address: 'Plaza de San Miguel, s/n, 28005 Madrid, Espanha',
  price: 0.00,
  description: 'Um mercado gastronômico coberto, ideal para provar uma variedade de tapas e produtos locais.',
  review: 'Um paraíso para os amantes da gastronomia, com uma variedade incrível de sabores e produtos.',
  city: madrid
)
madrid10.save!

londres1 = Place.new(
  name: 'The British Museum',
  address: 'Great Russell St, London WC1B 3DG, United Kingdom',
  price: 0.0,
  description: 'Um dos museus mais importantes do mundo, com uma coleção abrangente de artefatos históricos e culturais de todas as partes do globo.',
  review: 'Entrada gratuita e uma experiência cultural imperdível em Londres.',
  city: londres
)
londres1.save!

londres2 = Place.new(
  name: 'The Tower of London',
  address: 'London EC3N 4AB, United Kingdom',
  price: 29.90,
  description: 'Um castelo histórico e uma antiga prisão, lar das Joias da Coroa e da famosa Torre Branca.',
  review: 'Uma visita fascinante com guias animados e muitas histórias para descobrir.',
  city: londres
)
londres2.save!

londres3 = Place.new(
  name: 'The London Eye',
  address: 'Riverside Building, County Hall, London SE1 7PB, United Kingdom',
  price: 30.50,
  description: 'Uma roda-gigante de observação icônica às margens do Rio Tâmisa, proporcionando vistas panorâmicas da cidade.',
  review: 'Uma vista espetacular de Londres, especialmente ao pôr do sol.',
  city: londres
)
londres3.save!

londres4 = Place.new(
  name: 'Westminster Abbey',
  address: '20 Deans Yd, London SW1P 3PA, United Kingdom',
  price: 25.0,
  description: 'Uma igreja gótica histórica, local de coroações, casamentos e sepultamentos de membros da realeza britânica.',
  review: 'Arquitetura impressionante e uma história fascinante por trás de cada canto.',
  city: londres
)
londres4.save!

londres5 = Place.new(
  name: 'Buckingham Palace',
  address: 'London SW1A 1AA, United Kingdom',
  price: 26.50,
  description: 'A residência oficial da Rainha em Londres, famosa pela Troca da Guarda e pelos esplêndidos State Rooms.',
  review: 'Uma espiada no coração da monarquia britânica com uma experiência de visita única.',
  city: londres
)
londres5.save!

londres6 = Place.new(
  name: 'Tate Modern',
  address: 'Bankside, London SE1 9TG, United Kingdom',
  price: 0.0,
  description: 'Um dos museus de arte moderna mais famosos do mundo, localizado em uma antiga usina elétrica.',
  review: 'Entrada gratuita e uma incrível coleção de arte contemporânea de classe mundial.',
  city: londres
)
londres6.save!

londres7 = Place.new(
  name: 'St. Paul’s Cathedral',
  address: 'St. Paul’s Churchyard, London EC4M 8AD, United Kingdom',
  price: 20.0,
  description: 'Uma das catedrais mais icônicas do Reino Unido, famosa por sua grande cúpula e impressionante interior.',
  review: 'Um símbolo de resiliência e beleza com vistas deslumbrantes da cúpula.',
  city: londres
)
londres7.save!

londres8 = Place.new(
  name: 'The Natural History Museum',
  address: 'Cromwell Rd, South Kensington, London SW7 5BD, United Kingdom',
  price: 0.0,
  description: 'Um museu com coleções de história natural mundialmente famosas, incluindo dinossauros, minerais e muito mais.',
  review: 'Um dia educativo e divertido para toda a família, com entrada gratuita.',
  city: londres
)
londres8.save!

londres9 = Place.new(
  name: 'The Shard',
  address: '32 London Bridge St, London SE1 9SG, United Kingdom',
  price: 32.00,
  description: 'O edifício mais alto do Reino Unido, oferecendo uma vista de 360 graus da cidade a partir do seu deck de observação.',
  review: 'Vistas incríveis da cidade, especialmente ao anoitecer.',
  city: londres
)
londres9.save!

londres10 = Place.new(
  name: 'The Victoria and Albert Museum',
  address: 'Cromwell Rd, South Kensington, London SW7 2RL, United Kingdom',
  price: 0.0,
  description: 'Um museu dedicado às artes decorativas e ao design, com uma vasta coleção que abrange séculos.',
  review: 'Entrada gratuita para um mergulho fascinante no mundo das artes e do design.',
  city: londres
)
londres10.save!

bath1 = Place.new(
  name: 'The British Museum',
  address: 'Great Russell St, London WC1B 3DG, United Kingdom',
  price: 0.0,
  description: 'Um dos museus mais importantes do mundo, com uma coleção abrangente de artefatos históricos e culturais de todas as partes do globo.',
  review: 'Entrada gratuita e uma experiência cultural imperdível em Londres.',
  city: bath
)
bath1.save!

bath2 = Place.new(
  name: 'The Tower of London',
  address: 'London EC3N 4AB, United Kingdom',
  price: 29.90,
  description: 'Um castelo histórico e uma antiga prisão, lar das Joias da Coroa e da famosa Torre Branca.',
  review: 'Uma visita fascinante com guias animados e muitas histórias para descobrir.',
  city: bath
)
bath2.save!

bath3 = Place.new(
  name: 'The London Eye',
  address: 'Riverside Building, County Hall, London SE1 7PB, United Kingdom',
  price: 30.50,
  description: 'Uma roda-gigante de observação icônica às margens do Rio Tâmisa, proporcionando vistas panorâmicas da cidade.',
  review: 'Uma vista espetacular de Londres, especialmente ao pôr do sol.',
  city: bath
)
bath3.save!

bath4 = Place.new(
  name: 'Westminster Abbey',
  address: '20 Deans Yd, London SW1P 3PA, United Kingdom',
  price: 25.0,
  description: 'Uma igreja gótica histórica, local de coroações, casamentos e sepultamentos de membros da realeza britânica.',
  review: 'Arquitetura impressionante e uma história fascinante por trás de cada canto.',
  city: bath
)
bath4.save!

bath5 = Place.new(
  name: 'Buckingham Palace',
  address: 'London SW1A 1AA, United Kingdom',
  price: 26.50,
  description: 'A residência oficial da Rainha em Londres, famosa pela Troca da Guarda e pelos esplêndidos State Rooms.',
  review: 'Uma espiada no coração da monarquia britânica com uma experiência de visita única.',
  city: bath
)
bath5.save!

bath6 = Place.new(
  name: 'Tate Modern',
  address: 'Bankside, London SE1 9TG, United Kingdom',
  price: 0.0,
  description: 'Um dos museus de arte moderna mais famosos do mundo, localizado em uma antiga usina elétrica.',
  review: 'Entrada gratuita e uma incrível coleção de arte contemporânea de classe mundial.',
  city: bath
)
bath6.save!

bath7 = Place.new(
  name: 'St. Paul’s Cathedral',
  address: 'St. Paul’s Churchyard, London EC4M 8AD, United Kingdom',
  price: 20.0,
  description: 'Uma das catedrais mais icônicas do Reino Unido, famosa por sua grande cúpula e impressionante interior.',
  review: 'Um símbolo de resiliência e beleza com vistas deslumbrantes da cúpula.',
  city: bath
)
bath7.save!

bath8 = Place.new(
  name: 'The Natural History Museum',
  address: 'Cromwell Rd, South Kensington, London SW7 5BD, United Kingdom',
  price: 0.0,
  description: 'Um museu com coleções de história natural mundialmente famosas, incluindo dinossauros, minerais e muito mais.',
  review: 'Um dia educativo e divertido para toda a família, com entrada gratuita.',
  city: bath
)
bath8.save!

bath9 = Place.new(
  name: 'The Shard',
  address: '32 London Bridge St, London SE1 9SG, United Kingdom',
  price: 32.00,
  description: 'O edifício mais alto do Reino Unido, oferecendo uma vista de 360 graus da cidade a partir do seu deck de observação.',
  review: 'Vistas incríveis da cidade, especialmente ao anoitecer.',
  city: bath
)
bath9.save!

bath10 = Place.new(
  name: 'The Victoria and Albert Museum',
  address: 'Cromwell Rd, South Kensington, London SW7 2RL, United Kingdom',
  price: 0.0,
  description: 'Um museu dedicado às artes decorativas e ao design, com uma vasta coleção que abrange séculos.',
  review: 'Entrada gratuita para um mergulho fascinante no mundo das artes e do design.',
  city: bath
)
bath10.save!

newyork1 = Place.new(
  name: 'Central Park',
  address: 'New York, NY, USA',
  price: 0.0,
  description: 'Um vasto parque urbano no coração de Manhattan, oferecendo áreas verdes, trilhas, lagos e atividades recreativas para todas as idades.',
  review: 'Um oásis tranquilo em meio ao caos da cidade. Perfeito para um passeio relaxante ou um piquenique.',
  city: ny
)
newyork1.save!

newyork2 = Place.new(
  name: 'Statue of Liberty',
  address: 'Liberty Island, New York, NY, USA',
  price: 24.00,
  description: 'Um dos monumentos mais icônicos dos Estados Unidos, simbolizando liberdade e esperança para milhões de imigrantes que chegaram ao país.',
  review: 'Uma visita essencial para quem quer entender a história e os valores dos Estados Unidos.',
  city: ny
)
newyork2.save!

newyork3 = Place.new(
  name: 'Empire State Building',
  address: '350 5th Ave, New York, NY, USA',
  price: 44.00,
  description: 'Um dos arranha-céus mais famosos do mundo, oferecendo vistas panorâmicas incríveis de Nova Iorque.',
  review: 'A vista do topo é de tirar o fôlego, especialmente ao entardecer.',
  city: ny
)
newyork3.save!

newyork4 = Place.new(
  name: 'Times Square',
  address: 'New York, NY, USA',
  price: 0.0,
  description: 'O coração pulsante de Manhattan, famoso por seus letreiros luminosos, lojas e teatros da Broadway.',
  review: 'A energia e as luzes de Times Square são simplesmente incomparáveis. Um lugar que nunca dorme.',
  city: ny
)
newyork4.save!

newyork5 = Place.new(
  name: 'The Metropolitan Museum of Art',
  address: '1000 5th Ave, New York, NY, USA',
  price: 30.00,
  description: 'Um dos maiores e mais renomados museus de arte do mundo, com uma coleção vasta que abrange 5.000 anos de arte.',
  review: 'Um destino imperdível para os amantes de arte e cultura. Reserve pelo menos um dia inteiro para explorar.',
  city: ny
)
newyork5.save!

newyork6 = Place.new(
  name: 'Brooklyn Bridge',
  address: 'New York, NY, USA',
  price: 0.0,
  description: 'Uma das pontes mais antigas e reconhecidas dos Estados Unidos, conectando Manhattan ao Brooklyn com vistas espetaculares da cidade.',
  review: 'Caminhar pela Brooklyn Bridge ao entardecer é uma experiência mágica.',
  city: ny
)
newyork6.save!

newyork7 = Place.new(
  name: 'Museum of Modern Art (MoMA)',
  address: '11 W 53rd St, New York, NY, USA',
  price: 25.00,
  description: 'Um dos museus de arte moderna mais influentes do mundo, com uma coleção que inclui obras de Picasso, Van Gogh e Warhol.',
  review: 'O MoMA é um tesouro para qualquer pessoa interessada em arte moderna.',
  city: ny
)
newyork7.save!

newyork8 = Place.new(
  name: 'Broadway',
  address: 'Broadway, New York, NY, USA',
  price: 100.00,
  description: 'O epicentro do teatro americano, famoso por seus musicais e peças de renome mundial.',
  review: 'Assistir a um show da Broadway é uma experiência imperdível para qualquer visitante de Nova Iorque.',
  city: ny
)
newyork8.save!

newyork9 = Place.new(
  name: 'One World Observatory',
  address: '117 West St, New York, NY, USA',
  price: 43.00,
  description: 'Um observatório no topo do One World Trade Center, oferecendo vistas deslumbrantes de 360 graus de Nova Iorque.',
  review: 'Uma homenagem emocionante e uma vista incomparável. Altamente recomendado.',
  city: ny
)
newyork9.save!

newyork10 = Place.new(
  name: 'Rockefeller Center',
  address: '45 Rockefeller Plaza, New York, NY, USA',
  price: 0.0,
  description: 'Um complexo comercial icônico, famoso pela pista de patinação no gelo e pela árvore de Natal durante o inverno.',
  review: 'O Rockefeller Center é um lugar cheio de história e charme, especialmente durante as festas de fim de ano.',
  city: ny
)
newyork10.save!

lasvegas1 = Place.new(
  name: 'The Strip',
  address: 'Las Vegas Blvd, Las Vegas, NV, USA',
  price: 0.0,
  description: 'A avenida mais famosa de Las Vegas, repleta de hotéis luxuosos, cassinos, restaurantes e espetáculos mundialmente conhecidos.',
  review: 'A energia do The Strip é contagiante, com atrações para todos os gostos e uma atmosfera vibrante dia e noite.',
  city: lasvegas
)
lasvegas1.save!

lasvegas2 = Place.new(
  name: 'Bellagio Fountains',
  address: '3600 S Las Vegas Blvd, Las Vegas, NV, USA',
  price: 0.0,
  description: 'Um espetáculo de fontes dançantes em frente ao hotel Bellagio, sincronizado com música e luzes.',
  review: 'As fontes do Bellagio são absolutamente hipnotizantes e um dos pontos altos de qualquer visita a Las Vegas.',
  city: lasvegas
)
lasvegas2.save!

lasvegas3 = Place.new(
  name: 'Fremont Street Experience',
  address: 'Fremont St, Las Vegas, NV, USA',
  price: 0.0,
  description: 'Uma rua coberta no centro de Las Vegas, famosa por seus shows de luzes, música ao vivo e atividades emocionantes como a tirolesa.',
  review: 'A Fremont Street é uma mistura de nostalgia e modernidade, com uma atmosfera única e entretenimento para toda a família.',
  city: lasvegas
)
lasvegas3.save!

lasvegas4 = Place.new(
  name: 'The High Roller',
  address: '3545 S Las Vegas Blvd, Las Vegas, NV, USA',
  price: 34.75,
  description: 'A maior roda-gigante do mundo, oferecendo vistas panorâmicas espetaculares de Las Vegas.',
  review: 'Uma experiência incrível, especialmente ao pôr do sol, quando as luzes da cidade começam a brilhar.',
  city: lasvegas
)
lasvegas4.save!

lasvegas5 = Place.new(
  name: 'Red Rock Canyon National Conservation Area',
  address: '1000 Scenic Loop Dr, Las Vegas, NV, USA',
  price: 20.00,
  description: 'Uma área de conservação natural com formações rochosas impressionantes, trilhas para caminhadas e vistas deslumbrantes do deserto de Nevada.',
  review: 'Um refúgio perfeito da agitação da cidade, oferecendo uma beleza natural impressionante.',
  city: lasvegas
)
lasvegas5.save!

lasvegas6 = Place.new(
  name: 'The Neon Museum',
  address: '770 Las Vegas Blvd N, Las Vegas, NV, USA',
  price: 20.00,
  description: 'Museu ao ar livre dedicado à preservação dos icônicos letreiros luminosos de Las Vegas.',
  review: 'Uma viagem nostálgica pela história de Las Vegas, com letreiros antigos que são verdadeiras obras de arte.',
  city: lasvegas
)
lasvegas6.save!

lasvegas7 = Place.new(
  name: 'Caesars Palace',
  address: '3570 S Las Vegas Blvd, Las Vegas, NV, USA',
  price: 0.0,
  description: 'Um dos hotéis e cassinos mais icônicos de Las Vegas, conhecido por sua arquitetura inspirada na Roma antiga e pelo seu famoso Coliseu.',
  review: 'O Caesars Palace é um marco de Las Vegas, oferecendo luxo e entretenimento em grande estilo.',
  city: lasvegas
)
lasvegas7.save!

lasvegas8 = Place.new(
  name: 'Stratosphere Tower',
  address: '2000 S Las Vegas Blvd, Las Vegas, NV, USA',
  price: 20.00,
  description: 'A torre mais alta de Las Vegas, com atrações emocionantes como passeios de adrenalina e um deck de observação com vistas incríveis.',
  review: 'Para quem busca emoções fortes e vistas deslumbrantes, a Stratosphere Tower é imperdível.',
  city: lasvegas
)
lasvegas8.save!

lasvegas9 = Place.new(
  name: 'Hoover Dam',
  address: 'Hoover Dam, Boulder City, NV, USA',
  price: 30.00,
  description: 'Uma impressionante obra de engenharia situada na fronteira entre Nevada e Arizona, oferecendo visitas guiadas e vistas magníficas do Rio Colorado.',
  review: 'A Hoover Dam é uma maravilha da engenharia, com uma história fascinante e vistas que valem a viagem.',
  city: lasvegas
)
lasvegas9.save!

lasvegas10 = Place.new(
  name: 'The Venetian',
  address: '3355 S Las Vegas Blvd, Las Vegas, NV, USA',
  price: 0.0,
  description: 'Um hotel e cassino de luxo inspirado em Veneza, completo com canais, gôndolas e arquitetura que recria a cidade italiana.',
  review: 'O The Venetian é uma experiência única, transportando os visitantes para a charmosa Veneza no meio do deserto.',
  city: lasvegas
)
lasvegas10.save!

berlin1 = Place.new(
  name: 'Brandenburg Gate',
  address: 'Pariser Platz, 10117 Berlin, Germany',
  price: 0.0,
  description: 'Um dos marcos mais icônicos de Berlim, símbolo de paz e unidade, situado no coração da cidade.',
  review: 'Um lugar histórico e simbólico que é uma parada obrigatória para qualquer visitante de Berlim.',
  city: berlin
)
berlin1.photo.attach(io: attraction1, filename: "photo_attraction.png", content_type: "image/jpg")
berlin1.save!

berlin2 = Place.new(
  name: 'Berlin TV Tower (Fernsehturm)',
  address: 'Panoramastrasse 1A, 10178 Berlin, Germany',
  price: 21.5,
  description: 'A estrutura mais alta de Berlim, oferecendo uma vista panorâmica espetacular da cidade a partir do seu deck de observação.',
  review: 'Uma experiência imperdível com vistas deslumbrantes, especialmente ao pôr do sol.',
  city: berlin
)
berlin2.photo.attach(io: attraction2, filename: "photo_attraction.png", content_type: "image/jpg")
berlin2.save!

berlin3 = Place.new(
  name: 'Pergamon Museum',
  address: 'Bodestraße 1-3, 10178 Berlin, Germany',
  price: 12.0,
  description: 'Um museu mundialmente famoso, lar de artefatos históricos, incluindo o Altar de Pérgamo e o Portão de Ishtar.',
  review: 'Uma coleção impressionante que transporta os visitantes para civilizações antigas.',
  city: berlin
)
berlin3.photo.attach(io: attraction3, filename: "photo_attraction.png", content_type: "image/jpg")
berlin3.save!

berlin4 = Place.new(
  name: 'Berlin Wall Memorial',
  address: 'Bernauer Str. 111, 13355 Berlin, Germany',
  price: 0.0,
  description: 'Um memorial que preserva a história do Muro de Berlim, com exposições ao ar livre e um centro de documentação.',
  review: 'Um local impactante para aprender sobre a história dividida de Berlim e seus efeitos duradouros.',
  city: berlin
)
berlin4.photo.attach(io: attraction4, filename: "photo_attraction.png", content_type: "image/jpg")
berlin4.save!

berlin5 = Place.new(
  name: 'Checkpoint Charlie',
  address: 'Friedrichstraße 43-45, 10117 Berlin, Germany',
  price: 0.0,
  description: 'O mais famoso ponto de passagem entre Berlim Oriental e Ocidental durante a Guerra Fria, agora um museu ao ar livre.',
  review: 'Uma experiência histórica emocionante que revive os dias tensos da Guerra Fria.',
  city: berlin
)
berlin5.photo.attach(io: attraction5, filename: "photo_attraction.png", content_type: "image/jpg")
berlin5.save!

berlin6 = Place.new(
  name: 'Reichstag Building',
  address: 'Platz der Republik 1, 11011 Berlin, Germany',
  price: 0.0,
  description: 'O edifício do parlamento alemão, com uma cúpula de vidro moderna que oferece vistas panorâmicas da cidade.',
  review: 'Um edifício histórico com uma cúpula impressionante e entrada gratuita com reserva antecipada.',
  city: berlin
)
berlin6.photo.attach(io: attraction6, filename: "photo_attraction.png", content_type: "image/jpg")
berlin6.save!

berlin7 = Place.new(
  name: 'Museum Island',
  address: 'Museum Island, Berlin, Germany',
  price: 19.0,
  description: 'Um complexo de cinco museus renomados, incluindo o Museu de Pérgamo, o Neues Museum e a Alte Nationalgalerie.',
  review: 'Um paraíso cultural com coleções de arte e história de todo o mundo.',
  city: berlin
)
berlin7.photo.attach(io: attraction7, filename: "photo_attraction.png", content_type: "image/jpg")
berlin7.save!

berlin8 = Place.new(
  name: 'East Side Gallery',
  address: 'Mühlenstraße 3-100, 10243 Berlin, Germany',
  price: 0.0,
  description: 'A maior galeria de arte ao ar livre do mundo, com pinturas de artistas de todo o mundo ao longo do antigo Muro de Berlim.',
  review: 'Uma exibição vibrante de arte e história que reflete a luta pela liberdade.',
  city: berlin
)
berlin8.photo.attach(io: attraction8, filename: "photo_attraction.png", content_type: "image/jpg")
berlin8.save!

berlin9 = Place.new(
  name: 'Charlottenburg Palace',
  address: 'Spandauer Damm 20-24, 14059 Berlin, Germany',
  price: 14.0,
  description: 'Um esplêndido palácio barroco com jardins deslumbrantes, refletindo a grandiosidade da Prússia.',
  review: 'Uma visita encantadora ao maior palácio de Berlim, com interiores ricamente decorados.',
  city: berlin
)
berlin9.photo.attach(io: attraction9, filename: "photo_attraction.png", content_type: "image/jpg")
berlin9.save!

berlin10 = Place.new(
  name: 'Berlin Cathedral (Berliner Dom)',
  address: 'Am Lustgarten, 10178 Berlin, Germany',
  price: 9.0,
  description: 'Uma impressionante catedral protestante em estilo renascentista com um impressionante domo verde e vistas panorâmicas da cidade.',
  review: 'Uma obra-prima arquitetônica com vistas deslumbrantes do topo de sua cúpula.',
  city: berlin
)
berlin10.photo.attach(io: attraction10, filename: "photo_attraction.png", content_type: "image/jpg")
berlin10.save!

munich1 = Place.new(
  name: 'Marienplatz',
  address: 'Marienplatz, 80331 München, Germany',
  price: 0.0,
  description: 'A principal praça de Munique, famosa pelo Neues Rathaus (Nova Prefeitura) com seu famoso Glockenspiel.',
  review: 'Um ponto de encontro vibrante no coração da cidade, cheio de história e arquitetura impressionante.',
  city: munich
)
munich1.save!

munich2 = Place.new(
  name: 'Englischer Garten',
  address: 'Englischer Garten, 80538 München, Germany',
  price: 0.0,
  description: 'Um dos maiores parques urbanos do mundo, conhecido por seus jardins, lagos e a famosa torre chinesa.',
  review: 'Um refúgio tranquilo e verde no meio da cidade, perfeito para caminhadas e piqueniques.',
  city: munich
)
munich2.save!

munich3 = Place.new(
  name: 'Nymphenburg Palace',
  address: 'Schloss Nymphenburg 1, 80638 München, Germany',
  price: 8.0,
  description: 'Um magnífico palácio barroco com extensos jardins, salas ricamente decoradas e um museu de carruagens.',
  review: 'Um passeio majestoso pela residência de verão da antiga família real da Baviera.',
  city: munich
)
munich3.save!

munich4 = Place.new(
  name: 'Deutsches Museum',
  address: 'Museumsinsel 1, 80538 München, Germany',
  price: 14.0,
  description: 'O maior museu de ciência e tecnologia do mundo, com exposições interativas para todas as idades.',
  review: 'Um dia fascinante de aprendizado e diversão para toda a família.',
  city: munich
)
munich4.save!

munich5 = Place.new(
  name: 'Olympiapark',
  address: 'Spiridon-Louis-Ring 21, 80809 München, Germany',
  price: 0.0,
  description: 'Um parque olímpico construído para os Jogos de 1972, com atrações como o Olympiaturm e o Sea Life Munich.',
  review: 'Um local histórico para atividades ao ar livre, eventos e vistas panorâmicas de Munique.',
  city: munich
)
munich5.save!

munich6 = Place.new(
  name: 'BMW Museum',
  address: 'Am Olympiapark 2, 80809 München, Germany',
  price: 10.0,
  description: 'Um museu dedicado à história da BMW, apresentando carros clássicos, motos e inovações tecnológicas.',
  review: 'Um paraíso para os entusiastas de carros e tecnologia, com exposições modernas e interativas.',
  city: munich
)
munich6.save!

munich7 = Place.new(
  name: 'Viktualienmarkt',
  address: 'Viktualienmarkt 3, 80331 München, Germany',
  price: 0.0,
  description: 'Um famoso mercado de alimentos ao ar livre com barracas vendendo produtos locais, flores, queijos e embutidos.',
  review: 'Um ótimo lugar para experimentar a culinária bávara e desfrutar da atmosfera local.',
  city: munich
)
munich7.save!

munich8 = Place.new(
  name: 'Allianz Arena',
  address: 'Werner-Heisenberg-Allee 25, 80939 München, Germany',
  price: 19.0,
  description: 'O estádio de futebol do Bayern de Munique, conhecido por sua arquitetura inovadora e luzes LED que mudam de cor.',
  review: 'Uma experiência emocionante para os fãs de futebol, com visitas guiadas aos bastidores.',
  city: munich
)
munich8.save!

munich9 = Place.new(
  name: 'Munich Residenz',
  address: 'Residenzstraße 1, 80333 München, Germany',
  price: 9.0,
  description: 'O maior palácio urbano da Alemanha, com opulentas salas e tesouros reais.',
  review: 'Uma visita fascinante que explora a riqueza e a história dos monarcas da Baviera.',
  city: munich
)
munich9.save!

munich10 = Place.new(
  name: 'Hofbräuhaus München',
  address: 'Platzl 9, 80331 München, Germany',
  price: 0.0,
  description: 'Uma das cervejarias mais famosas do mundo, oferecendo cervejas tradicionais e culinária bávara em um ambiente animado.',
  review: 'Uma experiência autêntica da cultura bávara com boa música, comida e, claro, cerveja!',
  city: munich
)
munich10.save!
puts 'Attractions created.'

puts 'Creating trip...'
trip = Trip.create!(
  user: user,
  name: "Europa"
)
puts 'trip created.'

puts 'Creating 2 plans...'
plan1 = Plan.new(
  suggestion: 'Platzl 9, 80331 München, Germany',
  place: munich10,
  trip: trip
)
plan1.save!

plan2 = Plan.new(
  suggestion: 'Platzl 9, 80331 München, Germany',
  place: munich10,
  trip: trip
)
plan2.save!
puts 'Plans created.'

puts 'Creating group...'
group1 = Group.new(
  name: 'Amigos para sempre',
  trip: trip
)
group1.save!
puts 'Groups created.'

puts 'Creating 2 memberships...'
membership1 = Membership.new(
  group: group1,
  user: user
)
membership1.save!

membership2 = Membership.new(
  group: group1,
  user: admin
)
membership2.save!
puts 'memberships created.'
