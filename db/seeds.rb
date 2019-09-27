Product.destroy_all
ProductCategory.destroy_all
Restaurant.destroy_all
Category.destroy_all

puts 'Criando Categorias'

path_image = 'public/images/categories/mexican.jpg'
c = Category.create(id: 1, titulo: 'mexicana')
c.image.attach(io: File.open(path_image), filename: 'mexican.jpg')

path_image = 'public/images/categories/italian.jpeg'
c = Category.create(id: 2, titulo: 'italiana')
c.image.attach(io: File.open(path_image), filename: 'italian.jpeg')

path_image = 'public/images/categories/japonese.jpeg'
c = Category.create(id: 3, titulo: 'japonesa')
c.image.attach(io: File.open(path_image), filename: 'japonese.jpeg')

path_image = 'public/images/categories/vegan.jpeg'
c = Category.create(id: 4, titulo: 'vegana')
c.image.attach(io: File.open(path_image), filename: 'vegan.jpeg')


path_image = 'public/images/categories/peruvian.jpg'
c = Category.create(id: 5, titulo: 'peruana')
c.image.attach(io: File.open(path_image), filename: 'peruana.jpg')


puts 'Cadastrando Restaurantes'

# Mexican Restaurants
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create!(
    nome: 'Los Sombreros',
    descricao: 'Nossa missão tem sido ajudar as pessoas a alcançar seus objetivos de saúde e bem-estar. Embora tenhamos mudado ao longo dos anos, nossos valores permaneceram os mesmos.',
    status: 'open', delivery_tax: 5.50,
    estado: 'SP', cidade: 'São Paulo', rua: 'Melo Barreto',
    numero: '1393', bairro: 'Brás', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '1.jpg')
pc = ProductCategory.create!(titulo: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(nome: 'Nacho Guacamole', preco: 19, descricao: 'Tortilhas com Guacamole',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
prod = Product.create!(nome: 'Nacho', preco: 19, descricao: 'Tortilhas com milho', product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpeg')

path_image = 'public/images/restaurants/2.jpeg'
r = Restaurant.create!(
    nome: 'Ola Que Tal',
    descricao: 'Para alcançar e manter essa distinção em comida e vinho, serviço, ambiente e ambiente, o restaurante ganha reputação de primeira classe por gastronomia, hospitalidade graciosa e informada, conforto e beleza que atraem clientes novos e repetidos ano após ano.',
    status: 'open', delivery_tax: 5.50,
    estado: 'SP', cidade: 'São Paulo', rua: 'Viela Eugênio Monteiro Junior',
    numero: '659', bairro: 'Paraíso', category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '2.jpg')
pc = ProductCategory.create!(titulo: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(nome: 'Burrito', preco: 19, descricao: 'Tortilhas com Guacamole',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/bt.jpg'), filename: 'bt.jpg')
prod = Product.create!(nome: 'Quesadilha', preco: 25, descricao: 'Tortilhas de queijo',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/quesa.jpeg'), filename: 'quesa.jpeg')

# Italian Restaurants
path_image = 'public/images/restaurants/3.jpeg'
r = Restaurant.create!(
    nome: 'Bravo',
    descricao: 'Estamos empenhados em usar os melhores ingredientes em nossas receitas. Nenhum alimento deixa a nossa cozinha que nós mesmos não comeríamos.',
    status: 'open', delivery_tax: 3.50,
    estado: 'SP', cidade: 'São Paulo', rua: 'Rua Coperema',
    numero: '250', bairro: 'Jardim Jaú (Zona Leste)', category_id: 2
)
r.image.attach(io: File.open(path_image), filename: '3.jpg')
pc = ProductCategory.create!(titulo: 'Porções', restaurant: r)
prod = Product.create!(nome: 'Berinjela à parmegiana', preco: 78, descricao: 'Com arroz e fritas',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/berinjela.jpg'), filename: 'berinjela.jpg')
prod = Product.create!(nome: 'Fritas', preco: 35, descricao: 'Bata frita com bacon',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/fritas.jpg'), filename: 'fritas.jpg')

path_image = 'public/images/restaurants/4.jpeg'
r = Restaurant.create!(
    nome: 'La Pergoletti',
    descricao: 'Nossa missão é estabelecer relações comerciais benéficas com diversos fornecedores que compartilham nosso compromisso com o atendimento ao cliente, qualidade e preços competitivos.',
    status: 'open', delivery_tax: 6.70,
    estado: 'SP', cidade: 'São Paulo', rua: 'Rua Joaquim Pinto',
    numero: '929', bairro: 'Vila Gomes Cardim', category_id: 2
)
r.image.attach(io: File.open(path_image), filename: '4.jpg')
pc = ProductCategory.create!(titulo: 'Fogazzas (Individuais)', restaurant: r)
prod = Product.create!(nome: 'Fogazza Bacon', preco: 12, descricao: 'Bacon, parmesão e mussarela.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/fogazza.jpg'), filename: 'fogazza.jpg')
prod = Product.create!(nome: 'Fogazza A moda da Casa', preco: 12, descricao: 'Calabresa, bacon, palmito e mussarela.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/fogazza.jpg'), filename: 'fogazza.jpg')

# Japonese Restaurants
path_image = 'public/images/restaurants/5.jpeg'
r = Restaurant.create!(
    nome: 'Sushi Eterno',
    descricao: 'Existimos para garantir que cada hóspede receba um serviço rápido, profissional, amigável e cortês.',
    status: 'open', delivery_tax: 7.50,
    estado: 'SP', cidade: 'São Paulo', rua: 'Avenida Manoel Domingos Pinto',
    numero: '507', bairro: 'Parque Anhangüera', category_id: 3
)
r.image.attach(io: File.open(path_image), filename: '5.jpg')
pc = ProductCategory.create!(titulo: 'Entrada', restaurant: r)
prod = Product.create!(nome: 'Temaki', preco: 19.99, descricao: 'Enrolado de arroz com alga marinha em forma de cone',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/temaki.jpeg'), filename: 'temaki.jpeg')
prod = Product.create!(nome: 'Sashimi', preco: 30.90, descricao: 'Peixe cru fatiado, salmao, atum e peixe prego',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/sashimi.jpg'), filename: 'sashimi.jpg')

path_image = 'public/images/restaurants/6.jpeg'
r = Restaurant.create!(
    nome: 'Okuyamah',
    descricao: 'Restaurante conceituado, vencedor por 5 vezes como melhor restaurante Japones de São Paulo.',
    status: 'open', delivery_tax: 8.30,
    estado: 'SP', cidade: 'São Paulo', rua: 'Rua Francisco Artassio',
    numero: '134', bairro: 'Jardim das Laranjeiras', category_id: 3
)
r.image.attach(io: File.open(path_image), filename: '6.jpg')
pc = ProductCategory.create!(titulo: 'Entrada', restaurant: r)
prod = Product.create!(nome: 'Hossomaki 16 unidades', preco: 20.90, descricao: 'Enrolado fino com folha de alga marinha por fora.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/hosomaki.jpg'), filename: 'hosomaki.jpg')
prod = Product.create!(nome: 'Hot roll - 10 unidades', preco: 12, descricao: '10 unidades.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/hot-holl.jpg'), filename: 'hot-holl.jpg')

# Vegan Restaurants
path_image = 'public/images/restaurants/7.jpeg'
r = Restaurant.create!(
    nome: 'Club Life',
    descricao: 'NOSSA ESPECIALIDADE. pratos vegetais de alta qualidade,com opções de alimentos integrais, sem glúten e sem lactose.',
    status: 'open', delivery_tax: 5.70,
    estado: 'SP', cidade: 'São Paulo', rua: 'Alameda dos Uapês',
    numero: '933', bairro: 'Planalto Paulista', category_id: 4
)
r.image.attach(io: File.open(path_image), filename: '7.jpg')
pc = ProductCategory.create!(titulo: 'Saladas, molhos e wraps', restaurant: r)
prod = Product.create!(nome: 'Coleslaw', preco: 8.99, descricao: 'Repolho roxo, couve, cenoura, cebola, maionese de castanha e xylitol',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/coleslaw.jpg'), filename: 'coleslaw.jpg')
prod = Product.create!(nome: 'Side salad', preco: 9.90, descricao: 'Mix de folhas com cenoura ralada, tomatinho sweet e semente de girassol.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/side-salad.jpeg'), filename: 'side-salad.jpeg')

path_image = 'public/images/restaurants/8.jpeg'
r = Restaurant.create!(
    nome: 'Casa Natural',
    descricao: 'Oferecemos, desde 1981, refeições ovo-lacto-vegetarianas, leves, saudáveis, balanceadas e principalmente saborosas, procurando aliar o sabor, a qualidade de vida e o bem-estar dos clientes.',
    status: 'open', delivery_tax: 8.30,
    estado: 'SP', cidade: 'São Paulo', rua: 'Rua Natal',
    numero: '938', bairro: 'Cantinho do Céu', category_id: 4
)
r.image.attach(io: File.open(path_image), filename: '8.jpg')
pc = ProductCategory.create!(titulo: 'Saladas, molhos e wraps', restaurant: r)
prod = Product.create!(nome: 'Salada de quinoa', preco: 20.90, descricao: 'Alface americana, roxa, frisee, quinoa cozida, cenoura, tomate, damasco dessecado, amendoa crua.',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/salada-de-quinoa.jpg'), filename: 'salada-de-quinoa.jpg')
prod = Product.create!(nome: 'Coleslaw', preco: 11, descricao: 'Repolho roxo, couve, cenoura, cebola, maionese de castanha e xylitol',  product_category: pc)
prod.image.attach(io: File.open('public/images/products/coleslaw2.jpeg'), filename: 'coleslaw2.jpeg')