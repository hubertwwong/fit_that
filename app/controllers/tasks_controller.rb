class TasksController < ApplicationController
  
  # devise. blocks all users except authorized ones.
  before_filter :authenticate_user!
  
  # need to fix this.
  def create
    puts "====="
    puts task_params.inspect
    @task = Task.new(task_params)
    
    # add user id.
    @task.user_id = current_user.id
    
    puts @task.inspect
    #respond_to do |format|
    #  if @post.save
    #    format.html { redirect_to @post, notice: 'Post was successfully created.' }
    #    format.json { render action: 'show', status: :created, location: @post }
    #  else
    #    format.html { render action: 'new' }
    #    format.json { render json: @post.errors, status: :unprocessable_entity }
    #  end
    #end
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
  end
  
  # need to fix this.
  def show
  end
  
  # need to fix this.
  def update
  end
  
  private
  
  # strong params..
  # you have to explicitly allow params from the controller in rails 4.
  def task_params
    params.require(:task).permit(:task_category_id, 
                                 :task_type_id, 
                                 :length, 
                                 :speed, 
                                 :weight, 
                                 :rep, 
                                 :note)
  end
  
end
