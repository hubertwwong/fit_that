require 'factory_girl'

FactoryGirl.define do

  sequence(:note) do |n| 
    "note#{n}"
  end
  
  sequence(:length) do |n| 
    n * 60
  end
  
  sequence(:speed) do |n| 
    n * 60
  end
  
  sequence(:weight) do |n| 
    n * 5
  end
  
  sequence(:rep) do |n| 
    10
  end
  
  # defining :test_categories alias for easy associations
  factory :task do
    user
    task_category
    task_type
    
    #puts user.inspect
    #puts task_category.inspect
    #puts task_type.inspect
    
    note {generate(:note)}
    length {generate(:length)}
    speed {generate(:speed)}
    weight {generate(:note)}
    rep {generate(:rep)}
    started_at Time.now
  end
  
  # cols
  #
  # user_id
  # task_category_id
  # task_type_id
  # notes - notes of the exercise if you need it.
  # length - lenght of workout. mostly for cardio. in seconds.
  # speed - speed of the workout. cardio equipment. avg speed. in mph.
  # weight - weight you are lifting...
  # rep - number of reps that lifting.
  # started_at - if you want to add a date time.
  
end