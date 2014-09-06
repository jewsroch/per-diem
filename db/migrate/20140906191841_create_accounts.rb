class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.money :balance

      t.timestamps
    end
  end
end
