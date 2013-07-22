require 'spec_helper'
feature 'Deleting steps' do
let!(:listhowto) { Factory(:listhowto) }
let!(:step) { Factory(:step, :listhowto => listhowto) }
before do
visit '/'
click_link listhowto.name
click_link step.content
end
scenario "Deleting a step" do
click_link "Delete"
page.should have_content("Step has been deleted.")
page.current_url.should == listhowto_url(listhowto)
end
end
