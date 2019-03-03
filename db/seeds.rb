# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    
    User.create(username: "First", password: "password")
    User.create(username: "Second", password: "password")
    User.create(username: "Third", password: "password")
    
    Message.create(body: "I am message 2", user: User.first)
    Message.create(body: "I am message 3", user_id: 3)
    Message.create(body: "I am message 4", user_id: 2 )
    Message.create(body: "I am message 5", user: User.first)
    
    