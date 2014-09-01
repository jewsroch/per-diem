class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
