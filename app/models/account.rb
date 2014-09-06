class Account < ActiveRecord::Base
  has_many :users_accounts
  has_many :users, :through => :users_accounts
end
