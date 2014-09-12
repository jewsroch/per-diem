class AddTransactionBelongsToCategory < ActiveRecord::Migration
  def change
    add_reference :transactions, :category, index: true
  end
end
