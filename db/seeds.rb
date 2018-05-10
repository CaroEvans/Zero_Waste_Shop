# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create([{ city: 'Brisbane', state: 'QLD', country:'Australia', post_code:'4000'}])
Location.create([{ city: 'Sydney', state: 'NSW', country:'Australia', post_code:'2000'}])
Location.create([{ city: 'Melbourne', state: 'VIC', country:'Australia', post_code:'3000'}])
Location.create([{ city: 'Adelaide', state: 'SA', country:'Australia', post_code:'5000'}])

User.create([{ email: 'bill@billspickles.com.au', password: 'password123'}])
