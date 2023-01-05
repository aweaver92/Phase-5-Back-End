require 'open-uri'

puts "SEEDING DB..."
User.create(
  email: "shazbot@gmail.com",
  password: "Shazbot"
  )

Item.create(name: 'Shield', description: 'A sturdy shield for defending against attacks.')
Item.create(name: 'Helmet', description: 'A protective helmet for your head.')
Item.create(name: 'Chest Plate', description: 'Armor for your chest.')
Item.create(name: 'Leggings', description: 'Armor for your legs.')
Item.create(name: 'Boots of Speed', description: 'Protective footwear, with a kick!')
Item.create(name: 'Cloak', description: 'A cloak for protection from the elements.')
Item.create(name: 'Belt', description: 'A belt for carrying equipment.')

puts "SEEDING DB COMPLETE..."

