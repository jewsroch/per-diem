class AddCategoriesBelongToBudget < ActiveRecord::Migration
  def change
    add_reference :budgets, :category, index: true
  end
end
