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

  Testone.create(:item =>"A madman/A destructively harmful person")
  Testone.create(:item =>"Love of nature")
  Testone.create(:item =>"A pile of trash/A rubbish heap")
  Testone.create(:item =>"A technical improvement")
  Testone.create(:item =>"A devoted scientist")
  Testone.create(:item =>"Torture a person/Sadism")
  Testone.create(:item =>"Burn a witch at the stake/Religious fanaticism")
  Testone.create(:item =>"A mathematical genius")
  Testone.create(:item =>"Nonsense/Absurdity/Stupidity")
  Testone.create(:item =>"An electrical short circuit/A system breakdown")
  Testone.create(:item =>"A uniform")
  Testone.create(:item =>"A baby")
  Testone.create(:item =>"A good meal")
  Testone.create(:item =>"By this ring, I thee wed/Marriage vows")
  Testone.create(:item =>"A traffic ticket/A fine")
  Testone.create(:item =>"An assembly line/Highly routine labor")
  Testone.create(:item =>"Slavery/Being a slave/Being enslaved")
  Testone.create(:item =>"Blow up an airliner in flight/An act of terror")


  Testtwo.create(:item =>"I like my work, it does me good.")
  Testtwo.create(:item =>"The universe is a remarkably harmonious system.")
  Testtwo.create(:item =>"The world makes little sense to me.")
  Testtwo.create(:item =>"No matter how hard I work, I shall always feel frustrated.")
  Testtwo.create(:item =>"My working conditions are poor, and ruin my work.")
  Testtwo.create(:item =>"I feel at home in the world.")
  Testtwo.create(:item =>"I hate my work.")
  Testtwo.create(:item =>"My life is messing up the world.")
  Testtwo.create(:item =>"My work contributes nothing to the world.")
  Testtwo.create(:item =>"My work brings out the best in me.")
  Testtwo.create(:item =>"I enjoy being myself.")
  Testtwo.create(:item =>"I curse the day I was born.")
  Testtwo.create(:item =>"love my work.")
  Testtwo.create(:item =>"The lack of meaning in the universe disturbs me.")
  Testtwo.create(:item =>"The more I understand my place in the world, the better I get in my work.")
  Testtwo.create(:item =>"My work makes me unhappy.")
  Testtwo.create(:item =>"I love the beauty of the world.")
  Testtwo.create(:item =>"My work adds to the beauty and harmony of the world.")

puts "lists inserted to Testone and Testtwo table "
