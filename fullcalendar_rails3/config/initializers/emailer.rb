scheduler = Rufus::Scheduler.start_new


scheduler.at 'Mon Nov 1 12:30:03 -0400 2010' do
  #@supporter = Supporter.first
  @events = Event.soon_on_call
  Notifier.reminder_email(@events).deliver 
  puts 'Mail Delivered!'
end


=begin
scheduler.every '20s' do
  @supporter = Supporter.first
  puts "#{@supporter.email}"
end
scheduler.in '20m' do
  puts "order ristretto"
end
scheduler.cron '0 22 * * 1-5' do
  # every day of the week at 22:00 (10pm)
  puts 'activate security system'
end
=end
