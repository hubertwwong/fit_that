require 'factory_girl'

FactoryGirl.define do
  
  sequence(:email) do |n| 
    "user#{n}@foo.com"
  end
  
  factory :user do
    email
    password              "password"
    password_confirmation "password"
  end
  
end
    