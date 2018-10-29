# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do
Author.create([{
	name: Faker::Name.name,
	author_bio: Faker::Lorem.sentence(100),
	academics: Faker::Lorem.words,
	awards: Faker::Lorem.words
	}])
end

500.times do
Book.create([{
	name: Faker::Book.title,
	author: Faker::Book.author,
	short_desc: Faker::Lorem.sentence(1),
	long_desc: Faker::Lorem.paragraph(2),
	genre: Faker::Book.genre
	}])
end

250.times do
Review.create([{
	reviewer_name: Faker::Name.name,
	stars: Faker::Number.normal,
	review_title: Faker::Lorem.sentence(1),
	review_desc: Faker::Lorem.paragraph(2)
	}])
end