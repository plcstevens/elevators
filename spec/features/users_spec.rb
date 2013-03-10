require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "display users" do
      user = FactoryGirl.create(:user)
      visit users_path
      page.body.should have_content(user.name)
    end
  end
end
