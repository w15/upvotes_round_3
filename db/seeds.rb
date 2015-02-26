# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

10.times do
  u = User.create(email: Faker::Internet.safe_email, password: "12341234", password_confirmation: "12341234")
end

puts "#{ User.count } users in the database"




# NORMAL: type in user email in form -> gets saved into email column in database
# PASSWORD FLOW IN DEVISE: type in password in the form
                              # -> devise processes the password and password confirmation into an encrypted hash
                              # -> devise saves the encyrpted hash into the "encrypted_password" column
