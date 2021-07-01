# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Repo.create("name": "ravi/Hello-World", "url": "https://api.github.com/repos/ravi/Hello-World")
Repo.create("name": "pmsravi/Hello-World", "url": "https://api.github.com/repos/pmsravi/Hello-World")

Actor.create("login": "ravi", "url": "https://api.github.com/users/ravi")
Actor.create("login": "pmsravi", "url": "https://api.github.com/users/pmsravi")
