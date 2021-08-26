# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
    Todo.destroy_all
  puts "Creating todos..."

  firstTodo = Todo.create!(title: "somthing", body: "do things here", done: false)
  secondTodo = Todo.create!(title: "somthing else", body: "done things here", done: true)
  thirdTodo = Todo.create!(title: "get things", body: "things made somewhere else", done: false)
  fourthTodo = Todo.create!(title: "do things", body: "get stuff from not here", done: false)
  puts "Finished seeding"
end