class AddTransactionBelongsToUser < ActiveRecord::Migration
  def change
    add_reference :transactions, :user, index: true
  end
end
