class Notifier < ActionMailer::Base
  default :from => "scheduler@example.com"
  
  def welcome_email(supporter)
      @supporter = supporter
      @url  = "http://example.com/login"
      mail(:to => @supporter.email,
           :subject => "Welcome to My Awesome Site")
  end
  
  def reminder_email(events)
      @events = events
      @url  = "http://example.com/login"
      @events.each do |event|
        mail(:to => event.supporter.email,
             :subject => "Reminder: You are on call in one week")
         end
  end
end
