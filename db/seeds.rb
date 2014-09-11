User.destroy_all
Budget.destroy_all
Account.destroy_all
Category.destroy_all
Transaction.destroy_all

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

user1 = User.first
user2 = User.second

p "Created #{User.count} Users"

groceries = Category.create({
  title: "Groceries",
  amount_cents: "40000",
  budget: budget
})

eatout = Category.create({
  title: "Eating Out",
  amount_cents: "60000",
  budget: budget
})

transit = Category.create({
  title: "Transit",
  amount_cents: "10000",
  budget: budget
})

p "Created #{Category.count} Users"

Transaction.create([{
  amount_cents: "7340",
  transaction_date: Time.now,
  user: user1,
  category: groceries,
  account: account_schwab,
  notes: "Groceries at Trader Joe's"
},
{
  amount_cents: "3520",
  transaction_date: Time.now - 1.day,
  user: user2,
  category: eatout,
  account: account_chase,
  notes: "Dinner at Chipotle"
},
{
  amount_cents: "500",
  transaction_date: Time.now - 2.day,
  user: user2,
  category: eatout,
  account: account_schwab,
  notes: "Coffee at Sightglass"
},
{
  amount_cents: "200",
  transaction_date: Time.now - 2.day,
  user: user2,
  category: transit,
  account: account_chase,
  notes: "Bus"
},
{
  amount_cents: "12.75",
  transaction_date: Time.now - 3.day,
  user: user1,
  category: transit,
  account: account_chase,
  notes: "Uber"
}])

p "Created #{Transaction.count} Transactions"
