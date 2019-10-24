# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#dog initilization
# Dog.destroy_all
# 30.times do |t|
#     Dog.create(
#         name: Faker::Creature::Dog.name,
#         city: City.all.sample
#     )
# end 

#Cities initialization
# City.destroy_all
# 200.times do |t|
#     City.create!(
#         city_name: Faker::Address.city
#     )
# end 

#Dogs update
# Dog.all.each do |d|
#     d.update(city: City.all.sample)
# end 

#dositters initization
# Dogsitter.destroy_all
# 120.times do |t|
#     Dogsitter.create(
#         name: Faker::Name.name,
#         city: City.all.sample
#         )
# end 

#stralls ini
Strall.destroy_all
75.times do |t|
    Strall.create!(
        date: Faker::Time.backward(days: 200, period: :day, format: :short),
        dog: Dog.all.sample,
        dogsitter: Dogsitter.all.sample,
        city: City.all.sample
    )
end 


