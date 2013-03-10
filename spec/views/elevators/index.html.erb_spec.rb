require 'spec_helper'

describe "elevators/index" do
  before(:each) do
    assign(:elevators, [
      stub_model(Elevator
      ),
      stub_model(Elevator
      )
    ])
  end

  it "renders a list of elevators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 4
  end
end
