require 'factory_girl'

FactoryGirl.define do

  sequence(:workout_name) { |n| "superAwesomeWorkout#{n}" }
  
  factory :task_type do
    # association. using the alias test_category
    # association :task_category, factory: :task_category
    task_category
    # can use this association shortcut if the association and factory are the same.
  
    name      :workout_name
  end
  
end