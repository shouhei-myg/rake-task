# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
  ["たけし", "hoge@hoge", "男", 20],
  ["さおり", "hoge@hoge", "女", 23],
  ["たろう", "hoge@hoge", "男", 22]
]

users.each do |name, email, sex, age|
  User.create(name: name, email: email, sex: sex, age: age)
end