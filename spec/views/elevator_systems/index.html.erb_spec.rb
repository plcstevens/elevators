require 'spec_helper'

describe "elevator_systems/index" do
  before(:each) do
    assign(:elevator_systems, [
      stub_model(ElevatorSystem),
      stub_model(ElevatorSystem)
    ])
  end

  it "renders a list of elevator_systems" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
