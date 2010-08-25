Given /^I have event named "(.+)"$/ do |name|
    puts "\n\n\n\n #{name} \n\n\n\n"
    Factory(:event, :name => name)
end

Given /^I have the following events$/ do |table|  
  table.hashes.each do |hash|  
    Factory(:event, hash)  
  end  
end

Given /^the following user records$/ do |table|  
  table.hashes.each do |hash|  
    Factory(:user, hash)  
  end  
end

Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |login, password|  
  visit login_url  
  fill_in "Login", :with => login  
  fill_in "Password", :with => password  
  click_button "Login"  
end