# products = Product.create!([
#   {name: "Club C 85 Vintage Men's Shoes", price: "75", description: "This men's tennis shoe classic speaks to those with purist tendencies. Its clean, iconic style jazzes up jeans or joggers. The woven labels add a hit of old-school sensibility.", quantity: 1, supplier_id: 8},
#   {name: "Hitchhiker's Guide to the Galaxy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", quantity: 1, supplier_id: 2},
#   {name: "Lightsaber", price: "270.0", description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster", quantity: 1, supplier_id: 1},
#   {name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!", quantity: 1, supplier_id: 1},
#   {name: "DnD Dice set", price: "57.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", quantity: 1, supplier_id: 2},
#   {name: "Sonic Screwdriver", price: "9.0", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", quantity: 1, supplier_id: 2},
#   {name: "Yoda sleeping bag", price: "40.0", description: "For real", quantity: 1, supplier_id: 2},
#   {name: "Hello Kitty Rice Cooker", price: "58.0", description: "Makes sticky rice", quantity: 1, supplier_id: 1}
# ])



# Supplier.create!([
#   {name: "Nike", email: "nike@official.nike.com", phone_number: "1-800-806-6453"},
#   {name: "Reebok", email: "reebok@us-info.reebok.com", phone_number: "1-866-870-1743"},
#   {name: "Zappos", email: "cs@zappos.com", phone_number: "1-800-927-7671"}
# ])


categories = Category.create!([
  {name: "Running Shoe"},
  {name: "Basketball Shoe"},
  {name: "Street Shoe"}
])
