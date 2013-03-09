require 'spec_helper'

describe "floors/edit" do
  before(:each) do
    @floor = assign(:floor, stub_model(Floor,
      :number => 1
    ))
  end

  it "renders the edit floor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", floor_path(@floor), "post" do
      assert_select "input#floor_number[name=?]", "floor[number]"
    end
  end
end
