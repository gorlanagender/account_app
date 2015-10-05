class User < ActiveRecord::Base
  attr_accessible :address, :city, :dob, :email, :name, :state, :zip
    after_find do |user|
    puts "You have found an object!"
  end
  after_initialize do |user|
    puts "You have initialized an object!"
  end
  after_destroy :log_destroy_action
   def log_destroy_action
    puts 'Article destroyed'
  end
  has_many :accounts
  
  
  
  validates :name,:address,:city,:dob,:email,:state,:zip, presence: true
  validates :email,uniqueness: {case_sensitive: false} 
  validates :name, length: {minimum: 4}
  validates :email, format: {with: /.\@\w+\./ , message: "does not match the format"}
  validates :zip,numericality: true
end
