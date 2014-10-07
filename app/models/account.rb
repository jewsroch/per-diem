class Account < ActiveRecord::Base
  has_many :users_account
  has_many :users, :through => :users_account
  has_many :transactions

  monetize :balance_cents

  validates :name, presence: true
end
