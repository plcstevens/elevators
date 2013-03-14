require 'spec_helper'

describe "Elevators" do
  describe "GET /elevators" do
    it "displays elevators" do
      elevator = Elevator.create!(floor: Floor.first)
      visit elevators_path
      page.should have_content(elevator.floor.number)
    end
  end

  describe "GET /elevator" do
    it "displays an elevator" do
      elevator = FactoryGirl.create(:elevator)
      visit elevator_path elevator
      page.should have_content(elevator.floor.number)
    end
  end
end
