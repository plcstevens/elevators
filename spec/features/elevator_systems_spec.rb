require 'spec_helper'

describe "ElevatorSystems" do
  describe "GET /elevator_system/1" do
    it "display elevator system" do
      visit elevator_system_path(1)
      page.body.should have_content("Elevator System")
    end
  end
end
