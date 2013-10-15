class TaskType < ActiveRecord::Base
  belongs_to :task_category
  has_many :tasks
end
