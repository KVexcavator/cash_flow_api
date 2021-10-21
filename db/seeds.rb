# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CashFlow.delete_all
User.delete_all
users = User.create([{nikname: 'User1'},{nikname: 'User2'}])
CashFlow.create(title: 'test', is_income: true, price: 50.30, user: users.first, created_at: Time.current - 2.days)
CashFlow.create(title: 'test', is_income: false, price: 100.60, user: users.last, created_at: Time.current - 8.days)
CashFlow.create(title: 'test', is_income: true, price: 70.30, user: users.first, created_at: Time.current - 3.days)
CashFlow.create(title: 'test', is_income: false, price: 10.50, user: users.first, created_at: Time.current - 5.days)
CashFlow.create(title: 'test', is_income: true, price: 20.00, user: users.last, created_at: Time.current - 1.days)