#Deletes everything from the database

puts "Deleting all records from the database..."
City.delete_all
Category.delete_all
User.delete_all
Condition.delete_all
Item.delete_all

#Creates the cities

puts "Creating cities..."
chicago=City.create(name: "Chicago")
toronto=City.create(name: "Toronto")
losangeles=City.create(name: "Los Angeles")
newyork=City.create(name: "New York")
sanfrancisco=City.create(name: "San Francisco")

#Creates the categories

puts "Creating categories..."
seating=Category.create(name: "Seating", image: "accent_chair.jpg")
storage=Category.create(name: "Storage", image: "metal_shelf.jpg")
tables=Category.create(name: "Tables", image: "red_cocktail_table.jpg")
decor=Category.create(name: "Decor", image: "white_mirror.jpg")
misc=Category.create(name: "Miscellaneous", image: "dryer.jpg")

#Creates the users

puts "Creating users..."
casey=User.create(name: "Casey Field", email: "cfield2016@kellogg.northwestern.edu", password: "secret1", admin: true)
alex=User.create(name: "Alex Bourdeau", email: "abourdeau2015@kellogg.northwestern.edu", password: "secret2", admin: true)
jeff=User.create(name: "Jeff Joffman", email: "jhoffman2016@kellogg.northwestern.edu", password: "secret3", admin: false)
cam=User.create(name: "Cam Murphy", email: "cmurphy2015@kellogg.northwestern.edu", password: "secret4", admin: false)
ian=User.create(name: "Ian Rosen", email: "irosen2016@kellogg.northwestern.edu", password: "secret5", admin: false)

#Creates the conditions

puts "Creating conditions..."
excellent=Condition.create(name: "Excellent", description: "An item that exists in like-new condition.")
good=Condition.create(name: "Good", description: "An item with minor wear and tear consistent with its age.")
fair=Condition.create(name: "Fair", description: "An item with noticeable wear and tear that is visible to the naked eye.")
worn=Condition.create(name: "Worn", description: "An item that exhibits noticeable tears, stains, or other damage.")
salvage=Condition.create(name: "Salvage", description: "An item that is no longer useable.")

#Creates the items

puts "Creating items..."
accentchair=Item.create(name: "Elegant Accent Chair With Antique Ivory Finish", image: "accent_chair.jpg", description: "This chair is a fantastic statement piece for a study, living room, or entry hallway.", price: 59500, selling_url: "#", condition_id: excellent.id, city_id: chicago.id, category_id: seating.id)
bakersrack=Item.create(name: "Antique Wrought Iron Baker's Rack", image: "bakers_rack.jpg", description: "This beautiful wrought iron baker's rack has a wonderful old country feel to it.", price: 17500, selling_url: "#", condition_id: excellent.id, city_id: toronto.id, category_id: storage.id)
butlertable=Item.create(name: "Sky Blue Butler Tray Table", image: "blue_butler_table.jpg", description: "This two-piece butler tray table is the perfect piece for your front foyer.", price: 27500, selling_url: "#", condition_id: good.id, city_id: chicago.id, category_id: tables.id)
bronzeetagere=Item.create(name: "Modular Bronze Etagere (4 Pieces)", image: "bronze_etagere.jpg", description: "This piece is a unique and interesting unit perfect for displaying pictures, vases, or anything else you wish.", price: 22500, selling_url: "#", condition_id: excellent.id, city_id: chicago.id, category_id: storage.id)
butchersblock=Item.create(name: "Industrial Style Butcher's Block With Green Trim", image: "butchers_block.jpg", description: "This butcher's block table brings a unique, industrial flair to a home.", price: 18000, selling_url: "#", condition_id: fair.id, city_id: losangeles.id, category_id: tables.id)
dryer=Item.create(name: "Front-Loading GE Dryer", image: "dryer.jpg", description: "This front-loading GE dryer is in great working condition and is available at a bargain.", price: 5000, selling_url: "#", condition_id: worn.id, city_id: chicago.id, category_id: misc.id)
metalshelf=Item.create(name: "Metal 5-Tier Shelf, With Casters", image: "metal_shelf.jpg", description: "This metal 5-tier shelf is a wonderful piece for displaying knick-knacks and photographs at home.", price: 14000, selling_url: "#", condition_id: excellent.id, city_id: chicago.id, category_id: storage.id)
nestedtables=Item.create(name: "Wooden Nested Table Set (3 Tables)", image: "nested_tables.jpg", description: "This colorful wooden nested table set makes for an interesting and space-efficient piece.", price: 17500, selling_url: "#", condition_id: excellent.id, city_id: sanfrancisco.id, category_id: tables.id)
orangechairs=Item.create(name: "Orange Kitchen Accent Chairs (2 Chairs)", image: "orange_chairs.jpg", description: "These chairs offer a wonderful burst of color to the kitchen to brighten up your mornings.", price: 20000, selling_url: "#", condition_id: excellent.id, city_id: chicago.id, category_id: seating.id)
pedestaltable=Item.create(name: "Tangle Pedestal Side Table", image: "pedestal_table.jpg", description: "I love this table because of hte ornate metalwork in its base, which is wrought iron and carries a good amount of heft.", price: 50000, selling_url: "#", condition_id: excellent.id, city_id: chicago.id, category_id: tables.id)
pinkchair=Item.create(name: "Pink Kitchen Accent Chair", image: "pink_chair.jpg", description: "This chair offers a wonderful burst of color to the kitchen to brighten up your mornings.", price: 125000, selling_url: "#", condition_id: fair.id, city_id: chicago.id, category_id: seating.id)
cocktailtable=Item.create(name: "Red and Brushed Chrome Cocktail Table", image: "red_cocktail_table.jpg", description: "This two-piece red and brushed chrome cocktail table is perfect for your front foyer or as a drinks table.", price: 30000, selling_url: "#", condition_id: worn.id, city_id: newyork.id, category_id: tables.id)
redladder=Item.create(name: "Red Ladder Shelving Unit (4 Tiers)", image: "red_ladder.jpg", description: "This red ladder shelving unit provides an interesting way to display photographs, vases, plants, etc.", price: 11500, selling_url: "#", condition_id: excellent.id, city_id: chicago.id, category_id: storage.id)
roomdivider=Item.create(name: "Woven 4-Panel Room Divider", image: "room_divider.jpg", description: "This 4-panel room divider is the perfect piece of decor for hiding unsavory boxes or other items.", price: 13000, selling_url: "#", condition_id: good.id, city_id: toronto.id, category_id: decor.id)
stripedtable=Item.create(name: "Wooden Striped Side Table", image: "striped_table.jpg", description: "This folksy, colorful side table brings a touch of flair to whichever room you put it in.", price: 12500, selling_url: "#", condition_id: worn.id, city_id: sanfrancisco.id, category_id: tables.id)
tableshelf=Item.create(name: "Coffee Table Wall Shelf (3 Tiers)", image: "table_shelf.jpg", description: "This decorative shelving unit makes shelving interesting.", price: 14000, selling_url: "#", condition_id: good.id, city_id: chicago.id, category_id: storage.id)
turquoisechairs=Item.create(name: "Turquoise Kitchen Accent Chairs", image: "turquoise_chairs.jpg", description: "These chairs offer a wonderful burst of color to the kitchen to brighten up your mornings.", price: 20000, selling_url: "#", condition_id: excellent.id, city_id: sanfrancisco.id, category_id: seating.id)
whitemirror=Item.create(name: "Full-Body Mirror With White Trim", image: "white_mirror.jpg", description: "This is a beautiful full-body mirror with a wide, white trim.", price: 27500, selling_url: "#", condition_id: excellent.id, city_id: chicago.id, category_id: decor.id)
whitestool=Item.create(name: "Black and White Ornate Accent Stool", image: "white_stool.jpg", description: "This black and white bench is a beautiful accent piece for a living area or den.", price: 30000, selling_url: "https://www.chairish.com/product/110953/black-and-white-ornate-accent-stool", condition_id: good.id, city_id: chicago.id, category_id: decor.id)

#Displays the number of items in the database

puts "There are now #{City.count} cities, #{Category.count} categories, #{User.count} users, #{Condition.count} conditions, and #{Item.count} items in the database."