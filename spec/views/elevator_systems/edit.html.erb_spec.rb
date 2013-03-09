require 'spec_helper'

describe "elevator_systems/edit" do
  before(:each) do
    @elevator_system = assign(:elevator_system, stub_model(ElevatorSystem))
  end

  it "renders the edit elevator_system form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", elevator_system_path(@elevator_system), "post" do
    end
  end
end
