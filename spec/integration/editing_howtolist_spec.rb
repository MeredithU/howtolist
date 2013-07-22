require 'spec_helper'
feature "Editing howtolists" do
scenario "Updating a howtolist" do
Factory(:listhowto, :name => "howtolist2")
visit "/"
click_link "howtolist2"
click_link "Edit"
fill_in "Name", :with => "howtolist2 beta"
click_button "Update"
page.should have_content("One howtolist has been updated.")
end
end
