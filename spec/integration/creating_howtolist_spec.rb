require 'spec_helper'
feature 'Creating howtolists' do

  before {
    visit '/'
    click_link 'New howtolist'
  }
scenario "can create a howtolist" do
fill_in 'Name', :with => 'howtolist1'
click_button 'Create howtolist'
page.should have_content('One howtolist has been created.')
end
scenario "can not create a howtolist without a name" do
click_button 'Create howtolist'
page.should have_content("One howtolist has not been created.")
page.should have_content("Name can't be blank")
end

end
