require 'spec_helper'

describe "elevator_systems/new" do
  before(:each) do
    assign(:elevator_system, stub_model(ElevatorSystem).as_new_record)
  end

  it "renders new elevator_system form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", elevator_systems_path, "post" do
    end
  end
end
