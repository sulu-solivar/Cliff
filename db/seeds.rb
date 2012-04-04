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
  Testone.delete_all
  Testone.create( [
 {:row_number =>'1',:index_code =>'a',:group_code =>'E', :item =>"A madman/A destructively harmful person"},
 {:row_number =>'2',:index_code =>'b',:group_code =>'E', :item =>"Love of nature"},
 {:row_number =>'3',:index_code =>'c',:group_code =>'E', :item =>"A pile of trash/A rubbish heap"},
 {:row_number =>'4',:index_code =>'d',:group_code =>'E', :item =>"A technical improvement"},
 {:row_number =>'5',:index_code =>'e',:group_code =>'E', :item =>"A devoted scientist"},
 {:row_number =>'6',:index_code =>'f',:group_code =>'E', :item =>"Torture a person/Sadism"},
 {:row_number =>'7',:index_code =>'g',:group_code =>'E', :item =>"Burn a witch at the stake/Religious fanaticism"},
 {:row_number =>'8',:index_code =>'h',:group_code =>'E', :item =>"A mathematical genius"},
 {:row_number =>'9',:index_code =>'i',:group_code =>'E',:item =>"Nonsense/Absurdity/Stupidity"},
 {:row_number =>'10',:index_code =>'j',:group_code =>'E',:item =>"An electrical short circuit/A system breakdown"},
 {:row_number =>'11',:index_code =>'k',:group_code =>'E',:item =>"A uniform"},
 {:row_number =>'12',:index_code =>'l',:group_code =>'E',:item =>"A baby"},
 {:row_number =>'13',:index_code =>'m',:group_code =>'E',:item =>"A good meal"},
 {:row_number =>'14',:index_code =>'n',:group_code =>'E',:item =>"By this ring, I thee wed/Marriage vows"},
 {:row_number =>'15',:index_code =>'o',:group_code =>'E',:item =>"A traffic ticket/A fine"},
 {:row_number =>'16',:index_code =>'p',:group_code =>'E',:item =>"An assembly line/Highly routine labor"},
 {:row_number =>'17',:index_code =>'q',:group_code =>'E',:item =>"Slavery/Being a slave/Being enslaved"},
 {:row_number =>'18',:index_code =>'r',:group_code =>'E',:item =>"Blow up an airliner in flight/An act of terror"}])

  Testtwo.delete_all
  Testtwo.create([
     {:row_number =>'1',:index_code =>'a',:group_code =>'S', :item =>"I like my work, it does me good."},
     {:row_number =>'2',:index_code =>'b',:group_code =>'S', :item =>"The universe is a remarkably harmonious system."},
     {:row_number =>'3',:index_code =>'c',:group_code =>'S',:item =>"The world makes little sense to me."},
     {:row_number =>'4',:index_code =>'d',:group_code =>'S',:item =>"No matter how hard I work, I shall always feel frustrated."},
     {:row_number =>'5',:index_code =>'e',:group_code =>'S',:item =>"My working conditions are poor, and ruin my work."},
     {:row_number =>'6',:index_code =>'f',:group_code =>'S',:item =>"I feel at home in the world."},
     {:row_number =>'7',:index_code =>'g',:group_code =>'S',:item =>"I hate my work."},
     {:row_number =>'8',:index_code =>'h',:group_code =>'S',:item =>"My life is messing up the world."},
     {:row_number =>'9',:index_code =>'i',:group_code =>'S',:item =>"My work contributes nothing to the world."},
     {:row_number =>'10',:index_code =>'j',:group_code =>'S',:item =>"My work brings out the best in me."},
     {:row_number =>'11',:index_code =>'k',:group_code =>'S',:item =>"I enjoy being myself."},
     {:row_number =>'12', :index_code =>'l',:group_code =>'S',:item =>"I curse the day I was born."},
     {:row_number =>'13',:index_code =>'m',:group_code =>'S', :item =>"love my work."},
     {:row_number =>'14',:index_code =>'n',:group_code =>'S',:item =>"The lack of meaning in the universe disturbs me."},
     {:row_number =>'15',:index_code =>'o',:group_code =>'S',:item =>"The more I understand my place in the world, the better I get in my work."},
     {:row_number =>'16',:index_code =>'p',:group_code =>'S', :item =>"My work makes me unhappy."},
     {:row_number =>'17',:index_code =>'q',:group_code =>'S', :item =>"I love the beauty of the world."},
     {:row_number =>'18',:index_code =>'r',:group_code =>'S',:item =>"My work adds to the beauty and harmony of the world."}])
puts "lists inserted to Testone and Testtwo table "
