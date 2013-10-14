require "spec_helper"

describe TaskType do
  
  describe "relationships" do
    it "a task type should have a category" do
      FactoryGirl.create :task_type
      
      # results
      TaskType.all.length.should == 1
    end
  end
  
end