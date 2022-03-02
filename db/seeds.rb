Character.destroy_all
Show.destroy_all
Network.destroy_all
Actor.destroy_all

puts "🌱 Seeding data..."

a1 = Actor.create(first_name: "ryan", last_name: "oneill")

n1 = Network.create(call_letters: "ESPN", channel: 5)

s1 = Show.create(name: "Spongebob", day: "Sunday", season: "three", genre: "Cartoon", network_id: Network.first.id)

c1 = Character.create(name: "Patrick", actor_id: a1.id, show_id: Show.first, catchphrase: "uhhh")

puts "🌱 Done seeding!"
