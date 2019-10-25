# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#10 first users
# User.destroy_all
# 10.times do |t|
#     User.create(
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         description: Faker::Lorem.sentence(word_count: 3, random_words_to_add: 4),
#         email: Faker::Internet.email,
#         age: rand(18..77)
#     )
# end
# puts "10 users created"

#10 first cities
# 10.times do |t|
#     City.create(
#         name: Faker::Address.city,
#         zip_code: Faker::Address.zip_code
#         )
#     end
# puts "10 cities created"

#relate users to cities
# User.all.each do |t|
#     t.update(city: City.all.sample)
# end 

#ini gossips
# Gossip.destroy_all
# 20.times do |t|
#     Gossip.create(
#         title: "Enorme Gossip #{t}",
#         content: Faker::Company.bs,
#         user: User.all.sample
# )
# end
# puts "20 gossips créés"

#ini tags
# 10.times do 
#     Tag.create(
#         title: Faker::Company.buzzword
#     )
# end 

#ajout tags - gossips
# Gossip.all.each do |g|
#     nb = rand(1..Tag.all.length)
#     tag_array = nb.times.map{Tag.all.sample}.uniq
#     tag_array.each do |t|
#         GossipTag.create(
#             gossip: g,
#             tag: t
#         )
#     end
# end 

#ini PM ===> not working
PrivateMessage.destroy_all
10.times do 
    nb_recipients = rand(1..3)
    s = User.all.sample
    r = nb_recipients.times.map{User.all.delete(s).sample}.uniq
    PrivateMessage.create(
        content: Faker::Lorem.sentence(word_count: 12),
        sender: s,
        recipient: r
    )
end 

