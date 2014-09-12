class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.money :amount
      t.integer :account_id
      t.string :state
      t.date :transaction_date
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
