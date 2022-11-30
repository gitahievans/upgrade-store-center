puts "Seeding..."

# Staff.destroy_all
# Client.destroy_all
# StorageUnit.destroy_all
# Booking.destroy_all

Admin.create!(name:"Admin", email: "admin@email.com", password: "password")


Staff.create!(username:"Evans", email:"evans@storagecenter.com", password:"evans")
Staff.create!(username:"Ezra", email:"ezra@storagecenter.com", password:"ezra")

#Clients
Client.create!(username:"Simon", email:"simon@storagecenter.com", password:"simon", phone_number:722398032)

Client.create!(username:"Patrick", email:"patrick@storagecenter.com", password:"patrick", phone_number:722398032)

#Storage units
StorageUnit.create!(unit_number:1111, size:"Large", price:20000, image_url:"https://images.unsplash.com/photo-1588384055355-6b1aa2d98a29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzQwfHxjb250YWluZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", staff_id:1, availability:"Available"
)

StorageUnit.create!(unit_number:3333, size:"Small", price:10000, image_url:"https://images.unsplash.com/photo-1588384055355-6b1aa2d98a29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzQwfHxjb250YWluZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", staff_id:2, availability:"Available"
)
StorageUnit.create!(unit_number:4444, size:"Small", price:10000, image_url:"https://images.unsplash.com/photo-1588384055355-6b1aa2d98a29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzQwfHxjb250YWluZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", staff_id:2, availability:"Available"
)
StorageUnit.create!(unit_number:5555, size:"Small", price:10000, image_url:"https://images.unsplash.com/photo-1588384055355-6b1aa2d98a29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzQwfHxjb250YWluZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", staff_id:2, availability:"Available"
)

StorageUnit.create!(unit_number:6666, size:"Small", price:10000, image_url:"https://images.unsplash.com/photo-1588384055355-6b1aa2d98a29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzQwfHxjb250YWluZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", staff_id:2, availability:"Available"
)#
StorageUnit.create!(unit_number:7777, size:"Small", price:10000, image_url:"https://images.unsplash.com/photo-1588384055355-6b1aa2d98a29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzQwfHxjb250YWluZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", staff_id:2, availability:"Available"
)


Booking.create!(starting:"5/11/22", ending:"9/11/22", client_id:1, storage_unit_id:1, goods:"Residential", pickup_status:true, delivery_status:true)

Booking.create!(starting:"15/11/22", ending:"29/11/22", client_id:2, storage_unit_id:2, goods:"Residential", pickup_status:false, delivery_status:false)

puts "Done!"
