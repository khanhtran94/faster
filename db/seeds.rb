# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.first || User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')
# posts = [
#   {
#     title: 'My first post', 
#     content: 'The start of something special'
#   },
#   {
#     title: 'My second post', 
#     content: 'This is really getting good'
#   },
#   {
#     title: 'Oh my god, Yeah!!!',
#     content: 'Enough said.'
#   }
# ]
# posts.each do |post_hash|
#   user.posts.create(post_hash)
# end
#
# Status.create(name: 'ToDo')
# Status.create(name: 'Doing')
# Status.create(name: 'Done')
#
# Question.create(
#             name: "Hoi ve hoc phi",
#             content: "Em muon hoi lich nap hoc phi cua ki 2 nhom 2",
#             user_id: 1,
#             status_id: 1,
# )
#
#
# k = 28
#
# 5.times do |i|
#   khoa = "khoa_#{k}"
#   Tag.new(name: khoa, description: khoa).save
#   k += 1
# end

