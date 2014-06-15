# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: "admin@classofmadmoo.com", password: "admin", password_confirmation: "admin")
UserRole.create(name: "profesor")
UserRole.create(name: "student")
user.user_role_id = UserRole.where(name: "profesor").first.id
user.save