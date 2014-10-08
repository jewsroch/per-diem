require 'faker'

FactoryGirl.define do
  
  factory :budget do |f|
    f.start_date Time.now
    f.end_date 2.weeks.from_now
    f.total_budget_cents 100000
    f.savings_goal_cents 20000
  end

  factory :transaction do |f|
    f.amount_cents { Faker::Number.number(4) }
    f.transaction_date { Faker::Date.between(3.days.ago, 3.days.from_now)}
  end

end