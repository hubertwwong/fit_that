require 'factory_girl'

FactoryGirl.define do

  sequence(:category_name) { |n| "category#{n}" }
  
  # defining :test_categories alias for easy associations
  factory :task_category, aliases: [:alias_task_category] do
    name      :category_name
  end

  # association. using the alias test_category
  alias_task_category
  
  sequence(:workout_name) { |n| "superAwesomeWorkout#{n}" }
  
  factory :task_type do
    name      :workout_name
  end
  
  #association :task_category, factory: :task_category
  
end