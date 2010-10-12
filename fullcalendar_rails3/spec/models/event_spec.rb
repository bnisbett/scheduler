require 'spec_helper'

describe Event do

describe :event_endDate_before_startDate do
   it "should validate endDate is not less than startDate" do
     event = Factory.build(:event, :startDate => "2010-09-11", :endDate => "2008-09-12")
     event.should be_invalid
     event.should have(1).error_on(:endDate)
   end
 end

  
  describe :event_without_startDate do
    it "should validate presence of start date" do
      event = Factory.build(:event, :startDate => nil)
      event.should be_invalid
      event.should have(1).error_on(:startDate)
    end
  end
  
  describe :event_without_endDate do
    it "should validate presence of end date" do
      event = Factory.build(:event, :endDate => nil)
      event.should be_invalid
      event.should have(1).error_on(:endDate)
    end
  end
  
  describe :event_without_startTime do
    it "should validate presence of start time" do
      event = Factory.build(:event, :startTime => nil)
      event.should be_invalid
      event.should have(1).error_on(:startTime)
    end
  end
  
  describe :event_without_supporter_id do
    it "should validate presence of supporter id" do
      event = Factory.build(:event, :supporter_id => nil)
      event.should be_invalid
      event.should have(1).error_on(:supporter_id)
    end
  end
 


  
end
