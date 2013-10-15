class TasksController < ApplicationController
  
  # devise. blocks all users except authorized ones.
  before_filter :authenticate_user!
  
  # need to fix this.
  def index
    @tasks = Task.all  
  end
  
end
