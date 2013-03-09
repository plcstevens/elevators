require "spec_helper"

describe ElevatorsController do
  describe "routing" do

    it "routes to #index" do
      get("/elevators").should route_to("elevators#index")
    end

    it "routes to #new" do
      get("/elevators/new").should route_to("elevators#new")
    end

    it "routes to #show" do
      get("/elevators/1").should route_to("elevators#show", :id => "1")
    end

    it "routes to #edit" do
      get("/elevators/1/edit").should route_to("elevators#edit", :id => "1")
    end

    it "routes to #create" do
      post("/elevators").should route_to("elevators#create")
    end

    it "routes to #update" do
      put("/elevators/1").should route_to("elevators#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/elevators/1").should route_to("elevators#destroy", :id => "1")
    end

  end
end
