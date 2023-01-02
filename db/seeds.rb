require 'open-uri'

puts "SEEDING DB..."
User.create(
  email: "shazbot@gmail.com",
  password: "Shazbot"
  )

Item.create(name: 'Sword', description: 'A sharp blade for cutting through enemies.')
Item.create(name: 'Shield', description: 'A sturdy shield for defending against attacks.')
Item.create(name: 'Helmet', description: 'A protective helmet for your head.')
Item.create(name: 'Chest Plate', description: 'Armor for your chest.')
Item.create(name: 'Leggings', description: 'Armor for your legs.')
Item.create(name: 'Boots', description: 'Protective footwear.')
Item.create(name: 'Bow', description: 'A ranged weapon for shooting arrows.')
Item.create(name: 'Arrows', description: 'Ammunition for a bow.')
Item.create(name: 'Mace', description: 'A heavy weapon with a spiked head.')
Item.create(name: 'Dagger', description: 'A small, sharp weapon for close combat.')
Item.create(name: 'Wand', description: 'A magical weapon for casting spells.')
Item.create(name: 'Staff', description: 'A magical weapon for casting spells.')
Item.create(name: 'Cloak', description: 'A cloak for protection from the elements.')
Item.create(name: 'Ring', description: 'A magical ring with various powers.')
Item.create(name: 'Amulet', description: 'A magical amulet with various powers.')
Item.create(name: 'Bracers', description: 'Armor for your wrists.')
Item.create(name: 'Gauntlets', description: 'Armor for your hands.')
Item.create(name: 'Belt', description: 'A belt for carrying equipment.')

puts "SEEDING DB COMPLETE..."

