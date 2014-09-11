class RemoveUserIdFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :user_id
    remove_column :transactions, :account_id
    remove_column :transactions, :category_id
  end
end
