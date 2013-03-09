require 'spec_helper'

describe "floors/new" do
  before(:each) do
    assign(:floor, stub_model(Floor,
      :number => 1
    ).as_new_record)
  end

  it "renders new floor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", floors_path, "post" do
      assert_select "input#floor_number[name=?]", "floor[number]"
    end
  end
end
