require 'spec_helper'

describe "elevators/edit" do
  before(:each) do
    @elevator = assign(:elevator, stub_model(Elevator,
      :elevator_system => nil,
      :floor => nil
    ))
  end

  it "renders the edit elevator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", elevator_path(@elevator), "post" do
      assert_select "input#elevator_elevator_system[name=?]", "elevator[elevator_system]"
      assert_select "input#elevator_floor[name=?]", "elevator[floor]"
    end
  end
end
