require 'spec_helper'

describe "elevator_systems/show" do
  before(:each) do
    @elevator_system = assign(:elevator_system, stub_model(ElevatorSystem))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
