class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :timeoutable, :validatable
  belongs_to :budget
  
  has_many :users_account
  has_many :transactions
  has_many :accounts, :through => :users_account
end