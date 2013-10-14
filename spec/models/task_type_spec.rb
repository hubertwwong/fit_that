require "spec_helper"

describe TaskType do
  
  describe "relationships" do
    describe "basic" do
      # use lets for factories.
      # does lazy loading.
      let(:tt) {FactoryGirl.create :task_type}
      
      before(:each) do
        tt
        @tt1 = TaskType.first
      end
      
      it "name should be superAwesomeWorkoutN" do
        expect(@tt1.name).to eq('superAwesomeWorkout1')
      end
      
      it "category should exist" do
        expect(@tt1.task_category.name).to eq('category2')
      end
    end
  end
  
end