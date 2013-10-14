require 'factory_girl'

FactoryGirl.define do

  sequence(:category_name) { |n| "category#{n}" }
  
  # defining :test_categories alias for easy associations
  factory :task_category, aliases: [:alias_task_category] do
    name      :category_name
  end
  
end