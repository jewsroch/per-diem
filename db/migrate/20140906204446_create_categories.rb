class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.money :amount
      t.integer :budget_id

      t.timestamps
    end
  end
end
