require 'spec_helper'

describe "elevators/index" do
  before(:each) do
    assign(:elevators, [
      stub_model(Elevator,
        :elevator_system => nil,
        :floor => nil
      ),
      stub_model(Elevator,
        :elevator_system => nil,
        :floor => nil
      )
    ])
  end

  it "renders a list of elevators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
