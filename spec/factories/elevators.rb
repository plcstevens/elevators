# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :elevator do
    floor Floor.find_or_create_by_number(1)
  end
end
