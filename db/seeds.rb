# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name: 'Chez Françoise', address: 'Lausanne', phone_number: '021 643 56 43', category:'chinese')
Restaurant.create(name: 'Chez Martine', address: 'Crissier', phone_number: '021 702 10 45', category: 'italian')
Restaurant.create(name: 'Chez Robin', address: 'Renens', phone_number: '021 864 10 20', category: 'japanese')
Restaurant.create(name: 'Chez Youssef', address: 'Prilly', phone_number: '021 345 65 32', category: 'french')
Restaurant.create(name: 'Chez Adeline', address: 'Neuchatel', phone_number: '022 654 76 34', category: 'belgian')
