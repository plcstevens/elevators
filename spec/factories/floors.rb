# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :floor do
    number { rand(20) }
  end
end
