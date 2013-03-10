# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :elevator do
    floor Floor.first
  end
end
