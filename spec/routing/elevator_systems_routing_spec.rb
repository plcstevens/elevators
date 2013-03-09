require "spec_helper"

describe ElevatorSystemsController do
  describe "routing" do

    it "routes to #index" do
      get("/elevator_systems").should route_to("elevator_systems#index")
    end

    it "routes to #new" do
      get("/elevator_systems/new").should route_to("elevator_systems#new")
    end

    it "routes to #show" do
      get("/elevator_systems/1").should route_to("elevator_systems#show", :id => "1")
    end

    it "routes to #edit" do
      get("/elevator_systems/1/edit").should route_to("elevator_systems#edit", :id => "1")
    end

    it "routes to #create" do
      post("/elevator_systems").should route_to("elevator_systems#create")
    end

    it "routes to #update" do
      put("/elevator_systems/1").should route_to("elevator_systems#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/elevator_systems/1").should route_to("elevator_systems#destroy", :id => "1")
    end

  end
end
