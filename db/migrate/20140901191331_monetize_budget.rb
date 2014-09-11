class MonetizeBudget < ActiveRecord::Migration
  def change
  	add_money :budgets, :total_budget
  	add_money :budgets, :savings_goal
  end
end
