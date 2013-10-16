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
  end
  
end