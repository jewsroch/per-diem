class Category < ActiveRecord::Base
  has_many :transactions
  belongs_to :budget

  validates :title, presence: true
  validates :budget, presence: true
end
