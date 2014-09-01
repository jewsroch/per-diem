class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :omniauthable, :registerable,
         :recoverable, :rememberable, :trackable, :timeoutable, :validatable
end