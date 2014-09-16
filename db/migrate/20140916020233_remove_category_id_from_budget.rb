class RemoveCategoryIdFromBudget < ActiveRecord::Migration
  def change
    remove_column :budgets, :category_id, :integer
  end
end
