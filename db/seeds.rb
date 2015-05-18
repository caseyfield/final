#Deletes everything from the database

puts "Deleting all records from the database..."
User.delete_all
Appointment_slot.delete_all
Zip_code.delete_all
Review.delete_all
Inventory.delete_all
Item.delete_all

#Creates the zip codes

puts "Creating zip codes..."
zip1=Zip_code.create(zip: 60201)
zip2=Zip_code.create(zip: 60202)
zip3=Zip_code.create(zip: 60203)
zip4=Zip_code.create(zip: 60204)
zip5=Zip_code.create(zip: 60205)


#Creates the users

puts "Creating users..."
none=User.create(name: "No User", email: "No email", phone_number: "No Phone Number", address: "No Address", credit_card: 0000000000000000, password: "No password", zip_code_id: zip1.id)
casey=User.create(name: "Casey Field", email: "cfield2016@kellogg.northwestern.edu", phone_number: "847-868-6657", address: "1410 Chicago Avenue, Evanston, IL", credit_card: 5555555555555555, password: "password1", zip_code_id: zip1.id)
jeff=User.create(name: "Jeff Hoffman", email: "jhoffman2016@kellogg.northwester.edu", phone_number: "555-555-5555", address: "123 Fake Street, Chicago, IL", credit_card: 5555555555555555, password: "password2", zip_code_id: zip1.id)
cam=User.create(name: "Cam Murphy", email: "cmurphy2015@kellogg.northwestern.edu", phone_number: "847-555-5555", address: "1717 Ridge Avenue, Evanston, IL", credit_card: 555555555555, password: "password3", zip_code_id: zip1.id)
brad=User.create(name: "Brad Puder", email: "bradleypuder2015@u.northwestern.edu", phone_number: "847-555-5555", address: "123 Fake Avenue, Evanston, IL", credit_card: 555555555555, password: "password4", zip_code_id: zip1.id)
alex=User.create(name: "Alex Bourdeau", email: "abourdeau2015@kellogg.northwestern.edu", phone_number: "847-665-5555", address: "125 Fake Avenue, Evanston, IL", credit_card: 555555555555, password: "password5", zip_code_id: zip1.id)


#Creates the appointment slots

puts "Creating appointment slots..."
slot1=Appointment_slot.create(start_time: 12, end_time: 13, day: 8, month: 4, year: 2015, available: "Yes")
slot2=Appointment_slot.create(start_time: 13, end_time: 14, day: 8, month: 4, year: 2015, available: "No")
slot3=Appointment_slot.create(start_time: 14, end_time: 15, day: 8, month: 4, year: 2015, available: "Yes")
slot4=Appointment_slot.create(start_time: 15, end_time: 16, day: 8, month: 4, year: 2015, available: "Yes")
slot5=Appointment_slot.create(start_time: 16, end_time: 17, day: 8, month: 4, year: 2015, available: "No")

#Creates the reviews

puts "Creating user reviews..."
review1=Review.create(user_id: casey.id)
review2=Review.create(user_id: jeff.id)

#Creates the inventory lists

puts "Creating customer inventory lists..."
caseyinventory=Inventory.create(user_id: casey.id, day_created: 8, month_created: 4, year_created: 2015)
jeffinventory=Inventory.create(user_id: jeff.id, day_created: 8, month_created: 4, year_created: 2015)

#Creates the items in the inventory lists

puts "Creating items for inventory lists..."
lamp=Item.create(name: "Lamp", description: "This is a lamp", photograph: "www.image.com/lamp", status: "Sold", price_received: 100, vendor: "MaxSold", inventory_id: caseyinventory.id)
desk=Item.create(name: "Desk", description: "This is a desk", photograph: "www.image.com/desk", status: "Donated", price_received: 0, vendor: "Goodwill", inventory_id: caseyinventory.id)
chair=Item.create(name: "Chair", description: "This is a chair", photograph: "www.image.com.chair", status: "In Storage", price_received: 0, vendor: "dClutter", inventory_id: caseyinventory.id)
book=Item.create(name: "Book", description: "This is a book", photograph: "www.image.com/book", status: "Sold", price_received: 5, vendor: "Books.com", inventory_id: caseyinventory.id)
garbagebag=Item.create(name: "Garbage", description: "This was garbage", photograph: "No photo provided", status: "Disposed", price_received: 0, vendor: "N/A", inventory_id: caseyinventory.id)

#Displays number of items in database

puts "There are now #{User.count} users, #{Zip_code.count} zip codes, #{Appointment_slot.count} appointment slots, #{Review.count} reviews, #{Inventory.count} invetory lists, and #{Item.count} items in the database"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
