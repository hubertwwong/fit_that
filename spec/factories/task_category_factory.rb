require 'factory_girl'

FactoryGirl.define do

  sequence(:category_name) do |n| 
    "category#{n}"
  end
  
  # defining :test_categories alias for easy associations
  factory :task_category, aliases: [:alias_task_category] do
    name {generate(:category_name)}
  end
  
end