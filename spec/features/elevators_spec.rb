require 'spec_helper'

describe "Elevators" do
  describe "GET /elevators" do
    it "displays elevators" do
      Elevator.create!
      visit elevators_path
      page.should have_content("tr")
    end
  end
end
