Given(/^I visit the page containing the Creative Commons media$/) do
  visit '/media'
end

Then(/^I should see the CC logo that links to the Creative Commons homepage$/) do
  within("#logo") do
    page.should have_xpath("//img[@src='/assets/cc_licenseable/logos/cc.logo.svg']")
  end
end

Then(/^I should see all small license buttons$/) do
  CcLicenseable::CcLicense.all.each do |license|
    within(".small-btn") do
      page.should have_xpath("//img[@src='/assets/#{license.small_btn}']")
    end
  end
end

Then(/^I should see all medium license buttons$/) do
  CcLicenseable::CcLicense.all.each do |license|
    within(".med-btn") do
      page.should have_xpath("//img[@src='/assets/#{license.med_btn}']")
    end
  end
end

Then(/^I should see all license icons$/) do
  within(".icons") do
    %w{by cc nc-eu nc-jp nc nd pd remix sa sampling.plus sampling share zero }.each do |icon|
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/#{icon}.svg']")
    end
  end
end

Then(/^I should see the proper icon chains for each license$/) do
  within(".by") do
    within(".icon-chain") do
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/by.svg']")
    end
  end
  within(".by-sa") do
    within(".icon-chain") do
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/by.svg']")
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/sa.svg']")
    end
  end
  within(".by-nd") do
    within(".icon-chain") do
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/by.svg']")
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/nd.svg']")
    end
  end
  within(".by-nc") do
    within(".icon-chain") do
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/by.svg']")
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/nc.svg']")
    end
  end
  within(".by-nc-sa") do
    within(".icon-chain") do
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/by.svg']")
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/nc.svg']")
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/sa.svg']")
    end
  end
  within(".by-nc-nd") do
    within(".icon-chain") do
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/by.svg']")
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/nc.svg']")
      page.should have_xpath("//img[@src='/assets/cc_licenseable/icons/nd.svg']")
    end
  end
end
