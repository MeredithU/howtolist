require 'spec_helper'
feature "Deleting howtolists" do
scenario "Deleting a howtolistproject" do
Factory(:listhowto, :name => "howtolist2")
visit "/"
click_link "howtolist2"
click_link "Delete"
page.should have_content("One howtolist has been deleted.")
visit "/"
page.should_not have_content("howtolist2")
end
end
