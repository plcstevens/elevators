require 'spec_helper'

describe "elevators/index" do
  before(:each) do
    assign(:elevators, [
      stub_model(Elevator,
        elevator_system: ElevatorSystem.first,
        floor: Floor.first
      ),
      stub_model(Elevator,
         elevator_system: ElevatorSystem.first,
         floor: Floor.first
      )
    ])
  end

  it "renders a list of elevators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Elevator System".to_s, :count => 2
  end
end
