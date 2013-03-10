require 'spec_helper'

describe "elevator_systems/show" do
  before(:each) do
    @elevator_system =  assign(:elevator_system, ElevatorSystem.first)
  end

  it "renders a the of elevator_system" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
