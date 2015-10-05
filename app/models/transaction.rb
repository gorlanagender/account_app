class Transaction < ActiveRecord::Base
  attr_accessible :account_id, :amount, :description, :merchant, :ttype
  
  belongs_to :account
  
  validates :account_id,:amount,:description,:merchant,:ttype, presence: true
  validates :amount,:account_id, numericality: true
end
