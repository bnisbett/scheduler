class Event < ActiveRecord::Base
	belongs_to :supporter
	
  
  validates :startDate,:endDate,:name,:supporter_id,:startTime,:endTime, :presence => true
  validate :endDate_cannot_be_in_the_past

  def endDate_cannot_be_in_the_past
    errors.add(:endDate,"can't be in the past") if (!(startDate.blank? || endDate.blank?) && (self.startDate > self.endDate))
  end

	def self.soon_on_call
    where({:startDate => Date.yesterday..Date.today.end_of_week} | {:endDate =>Date.yesterday..Date.today.end_of_week}).order("startDate") 
  end

end
