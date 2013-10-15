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
      
      context "fields" do
        it "name" do
          expect(@tt1.name).to include('superAwesomeWorkout')
        end
      end
      
      context "task category" do
        it "name" do
          expect(@tt1.task_category.name).to include('category')
        end
      end
    end
  end
  
end