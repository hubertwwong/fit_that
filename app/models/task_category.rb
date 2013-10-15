class TaskCategory < ActiveRecord::Base
  has_many :task_types
  has_many :tasks
end
