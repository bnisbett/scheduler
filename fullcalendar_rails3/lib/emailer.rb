scheduler = Rufus::Scheduler.start_new

#scheduler.at 'Mon Nov 8 11:56:13 -0500 2010' do
scheduler.cron '0 12 * * 1-5' do
  @supporters = Supporter.notice
  @supporters.each do |supporter|
    Notifier.reminder_email(supporter).deliver
  end 
 puts "Supporters Notified Successfully!!"
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
