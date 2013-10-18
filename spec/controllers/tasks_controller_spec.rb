require "spec_helper"

describe TasksController do
  
  describe "user. not logged in" do
    describe "get #index" do
      it "should block the user" do
        get :index
        response.should redirect_to user_session_path  
      end
    end
    
    describe "get #show" do
      it "should block the user" do
        get :show, id: 1
        response.should redirect_to user_session_path  
      end
    end
    
    describe "post #create" do
      it "should block the user" do
        post :create
        response.should redirect_to user_session_path  
      end
    end
  end
  
  describe "user. logged in." do
    before(:each) do
      @user = FactoryGirl.create :user
      sign_in @user
    end
    
    describe "get #index" do
      it "should block the user" do
        get :index
        response.should be_success 
      end
    end
    
    describe "post #create" do
      it "should block the user" do
        t = FactoryGirl.build :task
        #puts "describe blok"
        #puts t.inspect
        post :create, task: t.attributes
        
        # this does not seem to build the associations.
        #post :create, task: FactoryGirl.attributes_for(:task)
        response.should redirect_to tasks_path
      end
    end
  end
  
end