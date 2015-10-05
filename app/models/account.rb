class Account < ActiveRecord::Base
  attr_accessible :atype, :number, :user_id
  
  belongs_to :user
  has_many :transactions
  
  validates :atype,:number,:user_id, presence: true
  validates :number,uniqueness: true
  validates :number,:user_id, numericality: true
end
