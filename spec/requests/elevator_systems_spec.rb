require 'spec_helper'

describe "ElevatorSystems" do
  describe "GET /elevator_systems" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get elevator_systems_path
      response.status.should be(200)
    end
  end
end
