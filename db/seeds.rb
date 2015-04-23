#Deletes everything from the database

puts "Deleting all records from the database..."
User.delete_all
Appointment_slot.delete_all
Location.delete_all
Zip_code.delete_all
Review.delete_all
Inventory.delete_all
Item.delete_all

#Creates the users

puts "Creating users..."
none=User.create(name: "No User", email: "No email", phone_number: "No Phone Number", address: "No Address", credit_card: 0000000000000000, password: "No password")
casey=User.create(name: "Casey Field", email: "cfield2016@kellogg.northwestern.edu", phone_number: "847-868-6657", address: "1410 Chicago Avenue, Evanston, IL", credit_card: 5555555555555555, password: "password1")
jeff=User.create(name: "Jeff Hoffman", email: "jhoffman2016@kellogg.northwester.edu", phone_number: "555-555-5555", address: "123 Fake Street, Chicago, IL", credit_card: 5555555555555555, password: "password2")
cam=User.create(name: "Cam Murphy", email: "cmurphy2015@kellogg.northwestern.edu", phone_number: "847-555-5555", address: "1717 Ridge Avenue, Evanston, IL", credit_card: 555555555555, password: "password3")
brad=User.create(name: "Brad Puder", email: "bradleypuder2015@u.northwestern.edu", phone_number: "847-555-5555", address: "123 Fake Avenue, Evanston, IL", credit_card: 555555555555, password: "password4")
alex=User.create(name: "Alex Bourdeau", email: "abourdeau2015@kellogg.northwestern.edu", phone_number: "847-665-5555", address: "125 Fake Avenue, Evanston, IL", credit_card: 555555555555, password: "password5")

#Creates the locations

puts "Creating locations..."
chicago=Location.create(city: "Chicago", state: "IL", country: "United States")
sanfrancisco=Location.create(city: "San Francisco", state: "CA", country: "United States")
losangeles=Location.create(city: "Los Angeles", state: "CA", country: "United States")
milwaukee=Location.create(city: "Milwaukee", state: "IL", country: "United States")
indianapolis=Location.create(city: "Indianapolis", state: "IN", country: "United States")

#Creates the zip codes

puts "Creating zip codes..."
zip1=Zip_code.create(zip: 60201, location_id: chicago.id)
zip2=Zip_code.create(zip: 60202, location_id: chicago.id)
zip3=Zip_code.create(zip: 60203, location_id: chicago.id)
zip4=Zip_code.create(zip: 60204, location_id: chicago.id)
zip5=Zip_code.create(zip: 60205, location_id: chicago.id)

#Creates the appointment slots

puts "Creating appointment slots..."
slot1=Appointment_slot.create(start_time: 12, end_time: 13, day: 8, month: 4, year: 2015, location_id: chicago.id, available: "Yes", user_id: none.id)
slot2=Appointment_slot.create(start_time: 13, end_time: 14, day: 8, month: 4, year: 2015, location_id: chicago.id, available: "No", user_id: casey.id)
slot3=Appointment_slot.create(start_time: 14, end_time: 15, day: 8, month: 4, year: 2015, location_id: chicago.id, available: "Yes", user_id: none.id)
slot4=Appointment_slot.create(start_time: 15, end_time: 16, day: 8, month: 4, year: 2015, location_id: chicago.id, available: "Yes", user_id: none.id)
slot5=Appointment_slot.create(start_time: 16, end_time: 17, day: 8, month: 4, year: 2015, location_id: chicago.id, available: "No", user_id: jeff.id)

#Creates the reviews

puts "Creating user reviews..."
review1=Review.create(user_id: casey.id, appointment_slot_id: slot2.id)
review2=Review.create(user_id: jeff.id, appointment_slot_id: slot5.id)

#Creates the inventory lists

puts "Creating customer inventory lists..."
caseyinventory=Inventory.create(user_id: casey.id, day_created: 8, month_created: 4, year_created: 2015)
jeffinventory=Inventory.create(user_id: jeff.id, day_created: 8, month_created: 4, year_created: 2015)

#Creates the items in the inventory lists

puts "Creating items for inventory lists..."
lamp=Item.create(name: "Lamp", description: "This is a lamp", photograph: "www.image.com/lamp", status: "Sold", price_received: 100, vendor: "MaxSold", inventory_list: caseyinventory.id)
desk=Item.create(name: "Desk", description: "This is a desk", photograph: "www.image.com/desk", status: "Donated", price_received: 0, vendor: "Goodwill", inventory_list: caseyinventory.id)
chair=Item.create(name: "Chair", description: "This is a chair", photograph: "www.image.com.chair", status: "In Storage", price_received: 0, vendor: "dClutter", inventory_list: caseyinventory.id)
book=Item.create(name: "Book", description: "This is a book", photograph: "www.image.com/book", status: "Sold", price_received: 5, vendor: "Books.com")
garbagebag=Item.create(name: "Garbage", description: "This was garbage", photograph: "No photo provided", status: "Disposed", price_received: 0, vendor: "N/A")

#Displays number of items in database

puts "There are now #{User.count} users, #{Location.count} locations, #{Zip_code.count} zip codes, #{Appointment_slot.count} appointment slots, #{Review.count} reviews, #{Inventory.count} invetory lists, and #{Item.count} items in the database"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
