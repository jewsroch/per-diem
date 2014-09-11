class Category < ActiveRecord::Base
  has_many :transactions
  belongs_to :budget
end
