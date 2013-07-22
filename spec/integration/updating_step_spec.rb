require 'spec_helper'
feature "Editing steps" do
let!(:listhowto) { Factory(:listhowto) }
let!(:step) { Factory(:step, :listhowto => listhowto) }
before do
visit '/'
click_link listhowto.name
click_link step.content
click_link "Edit"
end
scenario "Updating a step" do
fill_in "Content", :with => "Make it really shiny!"
click_button "Update"
page.should have_content "Step has been updated."
page.should have_content("Make it really shiny!")
page.should_not have_content step.content
end
scenario "Updating a step with invalid information" do
fill_in "Content", :with => ""
click_button "Update"
page.should have_content("Step has not been updated.")
end
end
