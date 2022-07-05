puts "🌱 Seeding data..."

Audition.create(actor: "Ren", location: "TX", phone: 555, hired: false, role_id: 1)
Audition.create(actor: "Sean", location: "MI", phone: 333, hired: false, role_id: 1)

Audition.create(actor: "Jake", location: "NC", phone: 111, hired: true, role_id: 2)
Audition.create(actor: "Sam", location: "WA", phone: 222, hired: false, role_id: 2)
Audition.create(actor: "Lily", location: "NM", phone: 444, hired: true, role_id: 2)

Role.create(character_name: "Bob")
Role.create(character_name: "John")

puts "🌱 Done seeding!"