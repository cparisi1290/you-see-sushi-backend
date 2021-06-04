# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


### SASHIMI
sake = Sashimi.create(
    name: 'Sake', 
    description: 'Salmon', 
    image: 'https://gurunavi.com/en/japanfoodie/article/sashimi_in_japan/img/02_Sashimi.jpg', 
    price: 3.50
)

maguro = Sashimi.create(
    name: 'Maguro', 
    description: 'Bluefin Tuna', 
    image: 'https://gurunavi.com/en/japanfoodie/article/sashimi_in_japan/img/03_Sashimi.jpg', 
    price: 2.00)

sabal = Sashimi.create(
    name: 'Saba', 
    description: 'Japanese Mackerel', 
    image: 'https://gurunavi.com/en/japanfoodie/article/sashimi_in_japan/img/10_Sashimi.jpg', 
    price: 2.50)

hamachi = Sashimi.create(
    name: 'Hamachi', 
    description: 'Yellowtail', 
    image: 'https://gurunavi.com/en/japanfoodie/article/sashimi_in_japan/img/12_Sashimi.jpg', 
    price: 2.00)

tai = Sashimi.create(
    name: 'Tai', 
    description: 'Red Snapper', 
    image: 'https://gurunavi.com/en/japanfoodie/article/sashimi_in_japan/img/13_Sashimi.jpg', 
    price: 3.00)


### SUSHI ROLLS
philadephia = SushiRoll.create(
    name: 'Philadelphia Roll',
    description: 'Contains: salmon, avocado, cream cheese',
    image: 'https://i.pinimg.com/originals/12/cc/dd/12ccdd4bd88ab1d903b10f4d9605c5ed.png',
    price: 6.50
)

alaska = SushiRoll.create(
    name: 'Alaska Roll',
    description: 'Contains: smoked salmon, avocado, cucumber, asparagus (optional)',
    image: 'https://img1.mashed.com/img/gallery/alaska-rolls-what-you-should-know-before-ordering/intro-1565126794.jpg',
    price: 6.50
)

dragon = SushiRoll.create(
    name: 'Dragon Roll',
    description: 'Contains: eel, crab sticks, avocado, cucumber, eel sauce',
    image: 'https://images.squarespace-cdn.com/content/v1/57019c4c04426228e6c546cd/1533175580144-UZ1GH5N285EX49S82HBN/ke17ZwdGBToddI8pDm48kJuI8p5FQJ1Eq-llLbNfaL4UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcVwiMXy0_LgceVXG1CKh67v8u1s0pBIJf9445W-KB9EEl1zKMAtdN8yEjqLo53gl0/Dragon+Roll.jpg',
    price: 6.99
)

boston = SushiRoll.create(
    name: 'Boston Roll',
    description: 'Contains: shrimp, avocado, cucumber',
    image: 'https://foodsguy.com/wp-content/uploads/2021/01/Boston-Roll-Sushi-Recipe-3-720x720.jpg',
    price: 5.50
)

rainbow = SushiRoll.create(
    name: 'Rainbow Roll',
    description: 'Contains: imitation crab, avocado, cucumber, tuna, salmon, shrimp, yellowtail',
    image: 'https://i.ytimg.com/vi/cIESjI-GCq0/hqdefault.jpg',
    price: 6.99
)

spicy_tuna = SushiRoll.create(
    name: 'Spicy Tuna Roll',
    description: 'Contains: tuna, spicy mayo, cucumber',
    image: 'https://i.pinimg.com/originals/d4/49/9e/d4499eb4344fe9aec812907f2c136d9d.jpg',
    price: 5.50
)