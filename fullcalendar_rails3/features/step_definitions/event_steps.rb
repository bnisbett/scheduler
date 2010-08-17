Given /^I have events named (.+)$/ do |names|
  names.split(', ').each do |name|
    Factory.build(:event, :name =>name)
  end
end