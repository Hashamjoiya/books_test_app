# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Book.create(title: 'Book 1', description:'Some book description goes here', price: 100)
Book.create(title: 'Book 2', description:'Some book description goes here', price: 200)
Book.create(title: 'Book 3', description:'Some book description goes here', price: 300)
Book.create(title: 'Book 4', description:'Some book description goes here', price: 400)
Book.create(title: 'Book 5', description:'Some book description goes here', price: 500)
Book.create(title: 'Book 6', description:'Some book description goes here', price: 600)
Book.create(title: 'Book 7', description:'Some book description goes here', price: 700)
Book.create(title: 'Book 8', description:'Some book description goes here', price: 800)

Tag.create(name: 'History', description: 'History books')
Tag.create(name: 'Novel', description: 'Novels')
Tag.create(name: 'Fiction', description: 'Fiction')
Tag.create(name: 'Non Ficition', description: 'Non Fiction')