require 'spec_helper'
feature "Creating Steps" do
before do
Factory(:listhowto, :name => "Internet Explorer")
visit '/'
click_link "Internet Explorer"
click_link "New Step"
end
scenario "Creating a step" do
fill_in "Content", :with => "go"
click_button "Create"
page.should have_content("Step has been created.")
end
scenario "Creating a ticket without valid attributes fails" do
click_button "Create"
page.should have_content("Step has not been created.")
page.should have_content("Content can't be blank")
end
end
