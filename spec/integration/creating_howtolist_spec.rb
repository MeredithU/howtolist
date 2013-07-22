require 'spec_helper'
feature 'Creating howtolists' do
scenario "can create a howtolist" do
visit '/'
click_link 'New howtolist'
fill_in 'Name', :with => 'howtolist1'
click_button 'Create howtolist'
page.should have_content('One howtolist has been created.')
end
end
