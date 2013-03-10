require 'spec_helper'

describe "ElevatorSystems" do
  describe "GET /elevator_system/1" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get elevator_system_path(1)
      response.status.should be(200)
    end
  end
end
