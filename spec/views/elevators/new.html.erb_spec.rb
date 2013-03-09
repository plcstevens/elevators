require 'spec_helper'

describe "elevators/new" do
  before(:each) do
    assign(:elevator, stub_model(Elevator,
      :elevator_system => nil,
      :floor => nil
    ).as_new_record)
  end

  it "renders new elevator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", elevators_path, "post" do
      assert_select "input#elevator_elevator_system[name=?]", "elevator[elevator_system]"
      assert_select "input#elevator_floor[name=?]", "elevator[floor]"
    end
  end
end
