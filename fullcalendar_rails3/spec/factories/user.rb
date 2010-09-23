Factory.define :user do |u|  
  u.login"Test user"  
  u.password "test"   
  u.password_confirmation "test" 
end

Factory.define :valid_user, :class => User do |u|
  u.login "benny"
  u.password 'benrocks'
  u.password_confirmation 'benrocks'
  u.password_salt 'CVVMAm9XxdwXpURdQG1N'
  u.crypted_password 'fb2454b8d22edacc6e88a55972ed5a...'
  u.persistence_token '6cde0674657a8a313ce952df979de2830309aa4c11ca6...'
end