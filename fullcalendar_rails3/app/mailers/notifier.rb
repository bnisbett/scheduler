class Notifier < ActionMailer::Base
  default :from => "scheduler@example.com"
  
  def welcome_email(supporter)
      @supporter = supporter
      @url  = "http://example.com/login"
      mail(:to => supporter.email,
           :subject => "Welcome to My Awesome Site")
  end
end
