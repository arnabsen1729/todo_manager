# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
date = Date.today
Todo.create!(todo_text: "Submit assignment", due_date: date - 1, completed: false)
Todo.create!(todo_text: "Pay rent", due_date: date, completed: true)
Todo.create!(todo_text: "File taxes", due_date: date + 1, completed: false)
Todo.create!(todo_text: "Call Acme Corp.", due_date: date + 1, completed: false)
Todo.create!(todo_text: "Service vehicle", due_date: date, completed: false)
