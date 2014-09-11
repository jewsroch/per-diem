class Account < ActiveRecord::Base
  has_many :users_account
  has_many :users, :through => :users_account
end
