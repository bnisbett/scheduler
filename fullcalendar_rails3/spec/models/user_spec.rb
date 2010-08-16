require 'spec_helper'

describe User do
  
  describe :user_without_login do
    it "should validate presence of login" do
      user = Factory.build(:user, :login => nil)
      user.should be_invalid
      user.should have(2).error_on(:login)
    end
  end
  
  describe :user_without_password do
    it "should validate presence of password" do
      user = Factory.build(:user, :password => nil)
      user.should be_invalid
      user.should have(2).error_on(:password)
    end
  end
  
  describe :user_without_confirmed_password do
    it "should validate presence of login" do
      user = Factory.build(:user, :password_confirmation  => nil)
      user.should be_invalid
      user.should have(1).error_on(:password_confirmation)
    end
  end
  
  describe :confirmed_password_does_not_match do
    it "should validate matched password" do
      user = Factory.build(:user, :password=>"redf",:password_confirmation  => "qywueiror")
      user.should be_invalid
      user.should have(1).error_on(:password)
    end
  end
  
  describe :password_too_short do
    it "should validate length of password" do
      user = Factory.build(:user, :password=>"ref")
      user.should be_invalid
      user.should have(2).error_on(:password)
    end
  end
  
  describe :login_too_short do
    it "should validate length of login" do
      user = Factory.build(:user, :login=>"r")
      user.should be_invalid
      user.should have(2).error_on(:login)
    end
  end
  
end
