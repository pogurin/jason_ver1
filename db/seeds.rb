# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..100).each do |variable|
	Dinosaur.create(:name => Faker::Name.first_name, :sizing => %w(small big huge).sample, :wings=> rand(10), :vegetarian => [false,true].sample)
end