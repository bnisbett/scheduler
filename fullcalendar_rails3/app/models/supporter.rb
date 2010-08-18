class Supporter < ActiveRecord::Base
  
  validates :email, :presence => true, :uniqueness => true, :email_format => true
  validates :phone, :presence => true, :phone_format => true
  validates :name, :isIT, :presence => true
  
  has_many :events
  
  def self.devs
    where(:isIT => false)
  end
  
  def self.its
    where(:isIT => true)
  end






end
