require 'spec_helper'

describe "Floors" do
  describe "GET /floors" do
    it "display floors" do
      visit floors_path
      page.body.should have_content(Floor.first.number)
    end
  end
end
