Given(/^I visit a page with a license form helper$/) do
  visit new_artwork_path
end

Then(/^I should see a dropdown with all the licenses$/) do
  licenses = ["CC BY (3.0)", "CC BY-SA (3.0)", "CC BY-ND (3.0)", "CC BY-NC (3.0)", "CC BY-NC-SA (3.0)", "CC BY-NC-ND (3.0)"]
  page.has_select?('artwork_cc_license_id', :options => licenses).should == true
end
