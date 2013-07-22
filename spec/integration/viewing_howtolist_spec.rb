require 'spec_helper'
feature "Viewing howtos" do
scenario "Listing all howtolists" do
how = Factory.create(:listhowto, :name => "howtolist1")
visit '/'
click_link 'howtolist1'
page.current_url.should == listhowto_url(how)
end
end
