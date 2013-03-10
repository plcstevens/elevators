require 'spec_helper'

describe "elevators/show" do
  before(:each) do
    @elevator = assign(:elevator, stub_model(Elevator,
      :elevator_system => ElevatorSystem.first,
      :floor => Floor.first
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
