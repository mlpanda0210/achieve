# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |n|
  email = Faker::Internet.email
  password = "password"
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               )
end


n=1
while n<=100
name = Faker::Name.name

 Blog.create(
    title: "Dive9 title",
    content: "Dive9 content",
    user_id: n
    )

user=User.find(n)
user.name = name
user.save
n = n + 1
end