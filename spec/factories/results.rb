# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :result do
    user_id 1
    item_order "MyText"
    test_num 1
  end
end
