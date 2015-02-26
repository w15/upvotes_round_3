# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  u = User.new
  u.email = Faker::Internet.safe_email
  u.password = "12341234"
  u.password_confirmation = "12341234"
  u.save
end





# NORMAL: type in user email in form -> gets saved into email column in database
# PASSWORD FLOW IN DEVISE: type in password in the form
                              # -> devise processes the password and password confirmation into an encrypted hash
                              # -> devise saves the encyrpted hash into the "encrypted_password" column
