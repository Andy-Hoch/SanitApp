puts "Cleaning up database..."
Treatment.destroy_all
puts "Database cleaned"

Treatment.create(name: 'Message', category: 'relax', description: 'Enjoy a nice little message with your boy, skinny Pete', address: 'Cologne Hauptbahnof', price: 20, duration: 60, next_free_spot_timestamp: Date.parse('2023-09-08'), user: User.last)
Treatment.create(name: 'Sucktion Cup', category: 'pain releif', description: 'Enjoy a nice little sucktion with your boy, skinny Pete', address: 'Cologne Hauptbahnof', price: 40, duration: 60, next_free_spot_timestamp: Date.parse('2023-09-08'), user: User.last)
Treatment.create(name: 'Goat Yoga', category: 'yoga', description: 'Enjoy a nice little goat yoga with your boy, skinny Pete', address: 'Cologne Hauptbahnof', price: 30, duration: 60, next_free_spot_timestamp: Date.parse('2023-09-08'), user: User.last)
Treatment.create(name: 'Doctor fish', category: 'feet', description: 'Enjoy a nice little doctor fish with your boy, skinny Pete', address: 'Cologne Hauptbahnof', price: 20, duration: 60, next_free_spot_timestamp: Date.parse('2023-09-08'), user: User.last)
Treatment.create(name: 'Meditation', category: 'enlightment', description: 'Enjoy a nice little meditation with your boy, skinny Pete', address: 'Cologne Hauptbahnof', price: 35, duration: 30, next_free_spot_timestamp: Date.parse('2023-09-08'), user: User.last)

puts "Treatments created"
