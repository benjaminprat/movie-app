# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.new({ first_name: "Colly", last_name: "Wolly", known_for: "Puppers in Paris" })

10.times do
  actor = Actor.create({ first_name: FFaker::Name.unique.first_name, last_name: FFaker::Name.unique.last_name, known_for: FFaker::Movie.unique.title })
end
