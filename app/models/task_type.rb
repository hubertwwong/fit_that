class TaskType < ActiveRecord::Base
  belongs_to :task_category
end
