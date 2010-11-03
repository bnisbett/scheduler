class Event < ActiveRecord::Base
	belongs_to :supporter
	
  
  validates :startDate,:endDate,:supporter_id,:startTime,:endTime, :presence => true
  validate :endDate_cannot_be_in_the_past

  def endDate_cannot_be_in_the_past
    errors.add(:endDate,"can't be in the past") if (!(startDate.blank? || endDate.blank?) && (self.startDate.to_s > self.endDate.to_s))
  end

	def self.soon_on_call
    where({:startDate => Date.yesterday..Date.today.end_of_week} | {:endDate =>Date.yesterday..Date.today.end_of_week}).order("startDate") 
  end

end
