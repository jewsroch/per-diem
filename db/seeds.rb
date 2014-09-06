User.destroy_all
Budget.destroy_all
Account.destroy_all

budget = Budget.create!({
  start_date: Time.now,
  end_date: 2.weeks.from_now,
  total_budget_cents: 100000,
  savings_goal_cents: 20000
})
p "Created Budget"

account_schwab = Account.create!(name: 'Charles Schwab Checking')
account_chase = Account.create!(name: 'Chase Checking')
p "Created Accounts"

User.create!([{
  email: "chadjewsbury@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Chad",
  last_name: "Jewsbury",
  budget: budget,
  accounts: [account_schwab, account_schwab]
},
{
  email: "katekorroch@gmail.com",
  password: "password",
  password_confirmation: "password",
  first_name: "Kate",
  last_name: "Korroch",
  budget: budget,
  accounts: [account_schwab, account_schwab]
}])

p "Created #{User.count} Users"