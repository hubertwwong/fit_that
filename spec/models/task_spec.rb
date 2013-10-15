require "spec_helper"

describe Task do
  
  describe "relationships" do
    describe "basic" do
      # use lets for factories.
      # does lazy loading.
      let(:task1) {FactoryGirl.create :task}
      
      before(:each) do
        task1
        @task1_from_db = Task.first
      end
      
      context "fields" do
        it "note" do
          expect(@task1_from_db.note).to include('note')
        end
        
        it "length" do
          expect(@task1_from_db.length).to be >= 0
        end
        
        it "speed" do
          expect(@task1_from_db.speed).to be >= 0
        end
        
        it "weight" do
          expect(@task1_from_db.weight).to be >= 0
        end
        
        it "rep" do
          expect(@task1_from_db.rep).to be >= 0
        end
      end
      
      context "user" do
        it "rep" do
          expect(@task1_from_db.user.email).to include('foo.com')
        end
      end
      
      context "task type" do
        it "name" do
          expect(@task1_from_db.task_type.name).to include('superAwesome')
        end
      end
      
      context "task category" do
        it "name" do
          expect(@task1_from_db.task_category.name).to include('category')
        end
      end
    end
  end
  
end