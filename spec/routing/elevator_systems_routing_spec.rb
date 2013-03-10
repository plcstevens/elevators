require "spec_helper"

describe ElevatorSystemsController do
  describe "routing" do

    it "routes to #show" do
      get("/elevator_systems/1").should route_to("elevator_systems#show", :id => "1")
    end

  end
end
