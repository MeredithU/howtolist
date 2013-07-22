require 'spec_helper'
feature "Viewing Steps" do
before do
textmate_2 = Factory(:listhowto, :name => "howtolist2")
Factory(:step,
:listhowto => textmate_2,
:content => "Make it shiny!")
internet_explorer = Factory(:listhowto, :name => "Internet Explorer")
Factory(:step,
:listhowto => internet_explorer,
:content => "Standards compliance")
visit '/'
end
scenario "Viewing steps for a given howtolist" do
click_link "howtolist2"
page.should have_content("Make it shiny!")
page.should_not have_content("Standards compliance")
click_link "Make it shiny!"
page.should have_content("Make it shiny!")
end
end

