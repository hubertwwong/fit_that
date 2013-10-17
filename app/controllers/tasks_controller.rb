class TasksController < ApplicationController
  
  # devise. blocks all users except authorized ones.
  before_filter :authenticate_user!
  
  # need to fix this.
  def create  
  end
  
  # need to fix this.
  def edit
  end
  
  # need to fix this.
  # start with this...
  def index
    @tasks = Task.all  
  end
  
  # need to fix this.
  def new
    @task = Task.new
    #@task_categories = TaskCategory.all
    #@task_types = TaskTypes.all
  end
  
  # need to fix this.
  def show
  end
  
  # need to fix this.
  def update
  end
  
end
