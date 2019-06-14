# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Todo_list.destroy_all
Task.destroy_all

admin = User.create(username: "admin")
user1 = User.create(username: "John")

today = Todo_list.create(title: "Dos for Today", user_id: admin.id)
nyc_restaurant = Todo_list.create(title: "Restaurant's in NYC", user_id: admin.id)
book_list = Todo_list.create(title: "Book's To Read", user_id: admin.id)
bucket_list = Todo_list.create(title: "Bucket List", user_id: admin.id)
project_ideas = Todo_list.create(title: "Project Ideas", user_id: admin.id)
date_ideas = Todo_list.create(title: "Date Ideas", user_id: admin.id)

Task.create(name: "Learn Something New", done: false,  todo_list_id: today.id)
Task.create(name: "Meditate", done: false,  todo_list_id: today.id)
Task.create(name: "Morning Meeting", done: false,  todo_list_id: today.id)
Task.create(name: "Educated", done: false,  todo_list_id: book_list.id)
Task.create(name: "The Suble Art of Not Giving a F*ck", done: false,  todo_list_id: book_list.id)
Task.create(name: "Shoe Dog", done: false,  todo_list_id: book_list.id)
Task.create(name: "Skydiving", done: false,  todo_list_id: bucket_list.id)
Task.create(name: "Climb Mont Blanc", done: false,  todo_list_id: bucket_list.id)
Task.create(name: "Movie", done: false,  todo_list_id: date_ideas.id)
Task.create(name: "Wine + Snacks on Central Park", done: false,  todo_list_id: date_ideas.id)
