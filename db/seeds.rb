# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'a@a.com', password: 'a', password_confirmation: 'a')
User.create!(email: 'b@b.com', password: 'b', password_confirmation: 'b')
User.create!(email: 'c@c.com', password: 'c', password_confirmation: 'c')
User.create!(email: 'd@d.com', password: 'd', password_confirmation: 'd')
User.create!(email: 'e@e.com', password: 'e', password_confirmation: 'e')

Profile.create!(surname:'Kent', given_name:'Clark', group:'Superhero', user_id: 1)
Profile.create!(surname:'Wayne', given_name:'Bruce', group:'Gotham', user_id: 2)
Profile.create!(surname:'Parker', given_name:'Peter', group:'Superhero', user_id: 3)
Profile.create!(surname:'Planck', given_name:'Max', group:'Physicist', user_id: 4)
Profile.create!(surname:'Cantor', given_name:'George', group:'Mathematician', user_id: 5)

Question.create!(topic:'Ruby methods')
Question.create!(topic:'HTML5')
Question.create!(topic:'CSS')
Question.create!(topic:'jQuery')
Question.create!(topic:'Ruby on Rails')
Question.create!(topic:'JS objects')
Question.create!(topic:'SQL CRUD')
Question.create!(topic:'Rails CRUD')
Question.create!(topic:'node.js')
Question.create!(topic:'ember.js')
Question.create!(topic:'BBQ')

Fist.create!(value:1, profile_id:1, question_id:1)
Fist.create!(value:2, profile_id:2, question_id:2)
Fist.create!(value:3, profile_id:3, question_id:3)
Fist.create!(value:4, profile_id:4, question_id:4)
Fist.create!(value:5, profile_id:5, question_id:5)
Fist.create!(value:1, profile_id:1, question_id:6)
Fist.create!(value:2, profile_id:2, question_id:7)
Fist.create!(value:3, profile_id:3, question_id:8)
Fist.create!(value:4, profile_id:4, question_id:9)
Fist.create!(value:5, profile_id:5, question_id:10)
Fist.create!(value:1, profile_id:1, question_id:11)
