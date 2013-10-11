require "spec_helper"

describe User do
  
  describe "test" do
    it "self.hello" do
      User.hello.should == "hello"
    end
  end
  
end