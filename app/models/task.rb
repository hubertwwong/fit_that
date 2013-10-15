class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :task_category
  belongs_to :task_type
  
  # cols
  #
  # user_id
  # task_category_id
  # task_type_id
  # note - notes of the exercise if you need it.
  # length - lenght of workout. mostly for cardio. in seconds.
  # speed - speed of the workout. cardio equipment. avg speed. in mph.
  # weight - weight you are lifting...
  # rep - number of reps that lifting.
  # started_at - if you want to add a date time.
end
