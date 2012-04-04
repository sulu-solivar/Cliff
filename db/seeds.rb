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

  Testone.create( :index_code =>'a',:group_code =>'E', :item =>"A madman/A destructively harmful person")
  Testone.create( :index_code =>'b',:group_code =>'E', :item =>"Love of nature")
  Testone.create( :index_code =>'c',:group_code =>'E', :item =>"A pile of trash/A rubbish heap")
  Testone.create( :index_code =>'d',:group_code =>'E', :item =>"A technical improvement")
  Testone.create( :index_code =>'e',:group_code =>'E', :item =>"A devoted scientist")
  Testone.create( :index_code =>'f',:group_code =>'E', :item =>"Torture a person/Sadism")
  Testone.create( :index_code =>'g',:group_code =>'E', :item =>"Burn a witch at the stake/Religious fanaticism")
  Testone.create( :index_code =>'h',:group_code =>'E', :item =>"A mathematical genius")
  Testone.create( :index_code =>'i',:group_code =>'E',:item =>"Nonsense/Absurdity/Stupidity")
  Testone.create( :index_code =>'j',:group_code =>'E',:item =>"An electrical short circuit/A system breakdown")
  Testone.create( :index_code =>'k',:group_code =>'E',:item =>"A uniform")
  Testone.create( :index_code =>'l',:group_code =>'E',:item =>"A baby")
  Testone.create( :index_code =>'m',:group_code =>'E',:item =>"A good meal")
  Testone.create( :index_code =>'n',:group_code =>'E',:item =>"By this ring, I thee wed/Marriage vows")
  Testone.create( :index_code =>'o',:group_code =>'E',:item =>"A traffic ticket/A fine")
  Testone.create( :index_code =>'p',:group_code =>'E',:item =>"An assembly line/Highly routine labor")
  Testone.create( :index_code =>'q',:group_code =>'E',:item =>"Slavery/Being a slave/Being enslaved")
  Testone.create( :index_code =>'r',:group_code =>'E',:item =>"Blow up an airliner in flight/An act of terror")


  Testtwo.create(:index_code =>'a',:group_code =>'S', :item =>"I like my work, it does me good.")
  Testtwo.create(:index_code =>'b',:group_code =>'S', :item =>"The universe is a remarkably harmonious system.")
  Testtwo.create( :index_code =>'c',:group_code =>'S',:item =>"The world makes little sense to me.")
  Testtwo.create( :index_code =>'d',:group_code =>'S',:item =>"No matter how hard I work, I shall always feel frustrated.")
  Testtwo.create( :index_code =>'e',:group_code =>'S',:item =>"My working conditions are poor, and ruin my work.")
  Testtwo.create( :index_code =>'f',:group_code =>'S',:item =>"I feel at home in the world.")
  Testtwo.create( :index_code =>'g',:group_code =>'S',:item =>"I hate my work.")
  Testtwo.create( :index_code =>'h',:group_code =>'S',:item =>"My life is messing up the world.")
  Testtwo.create( :index_code =>'i',:group_code =>'S',:item =>"My work contributes nothing to the world.")
  Testtwo.create( :index_code =>'j',:group_code =>'S',:item =>"My work brings out the best in me.")
  Testtwo.create( :index_code =>'k',:group_code =>'S',:item =>"I enjoy being myself.")
  Testtwo.create(  :index_code =>'l',:group_code =>'S',:item =>"I curse the day I was born.")
  Testtwo.create( :index_code =>'m',:group_code =>'S', :item =>"love my work.")
  Testtwo.create(  :index_code =>'n',:group_code =>'S',:item =>"The lack of meaning in the universe disturbs me.")
  Testtwo.create(  :index_code =>'o',:group_code =>'S',:item =>"The more I understand my place in the world, the better I get in my work.")
  Testtwo.create( :index_code =>'p',:group_code =>'S', :item =>"My work makes me unhappy.")
  Testtwo.create( :index_code =>'q',:group_code =>'S', :item =>"I love the beauty of the world.")
  Testtwo.create(  :index_code =>'r',:group_code =>'S',:item =>"My work adds to the beauty and harmony of the world.")

puts "lists inserted to Testone and Testtwo table "
