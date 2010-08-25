require 'spec_helper'

describe Supporter do
  
  describe :supporter_without_name do
    it "should validate presence of name" do
      supporter = Factory.build(:supporter, :name => nil)
      supporter.should be_invalid
      supporter.should have(1).error_on(:name)
    end
  end
  
  describe :supporter_without_phone do
    it "should validate presence of phone number" do
      supporter = Factory.build(:supporter, :phone => nil)
      supporter.should be_invalid
      supporter.should have(2).error_on(:phone) # We expect 2 errors - phone empty and in wrong format because it is empty
    end
  end
  
  describe :supporter_without_email do
    it "should validate presence of email address" do
      supporter = Factory.build(:supporter, :email => nil)
      supporter.should be_invalid
      supporter.should have(2).error_on(:email) # We expect 2 errors - email empty and in wrong format because it is empty
    end
  end
begin
  describe :supporter_without_isIT do
    it "should validate presence of IT/Developer Status" do
      supporter = Factory.build(:supporter, :isIT => nil)
      supporter.should be_invalid
      supporter.should have(1).error_on(:isIT)
    end
  end
end  
  describe :supporter_with_incorrect_phone_format do
    it "should validate format of phone number" do
      supporter = Factory.build(:supporter, :phone => "123djeursa33333eee")
      supporter.should be_invalid
      supporter.should have(1).error_on(:phone)
    end
  end
 
  describe :supporter_with_incorrect_email_format do
    it "should validate format of phone number" do
      supporter = Factory.build(:supporter, :email => "123djeu@rsa33333eee")
      supporter.should be_invalid
      supporter.should have(1).error_on(:email)
    end
  end  
 
end
