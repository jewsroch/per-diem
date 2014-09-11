class Budget < ActiveRecord::Base
  monetize :total_budget_cents, :savings_goal_cents

  has_many :users
  has_many :categories
end
