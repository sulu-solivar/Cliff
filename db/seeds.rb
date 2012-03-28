# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#puts 'SETTING UP DEFAULT USER LOGIN'
#user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => DateTime.now
#puts 'New user created: ' << user.name
puts "New list data"
  List.create(:body =>"A madman/A destructively harmful person")
  List.create(:body =>"A pile of trash/A rubbish heap")
  List.create(:body =>"A mathematical genius")
  List.create(:body =>"A traffic ticket/A fine")
  List.create(:body =>"Slavery/Being a slave/Being enslaved")
  List.create(:body =>"n electrical short circuit/A system breakdown")
