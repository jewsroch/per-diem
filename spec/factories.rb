require 'faker'

FactoryGirl.define do
  
  factory :budget do |f|
    f.start_date Time.now
    f.end_date 2.weeks.from_now
    f.total_budget_cents 100000
    f.savings_goal_cents 20000
  end

  factory :account do |f|
    f.name { Faker::Name.name }
  end

  factory :user do |f|
    password = Faker::Lorem.characters(10)
    f.password { password }
    f.password_confirmation password
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.email { Faker::Internet.email }
    budget

    trait :with_accounts do
      accounts { FactoryGirl.create_list(:account, 2) }
    end
  end

  factory :category do |f|
    f.title { Faker::Lorem.word }
    budget
  end

  factory :transaction do |f|
    f.amount_cents { Faker::Number.number(4) }
    f.transaction_date { Faker::Date.between(3.days.ago, 3.days.from_now) }
    f.notes { Faker::Lorem.sentence }
    user
    category
    account
  end
end