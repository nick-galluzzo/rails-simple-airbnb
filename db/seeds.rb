# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all

10.times do
  Flat.create(name: Faker::FunnyName.two_word_name,
              address: Faker::Address.full_address,
              description: Faker::Hacker.say_something_smart,
              price_per_night: rand(20..500),
              number_of_guests: rand(1..5)
             )
end


#
# params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
