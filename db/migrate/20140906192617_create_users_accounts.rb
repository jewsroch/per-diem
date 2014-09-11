class CreateUsersAccounts < ActiveRecord::Migration
  def change
    create_table :users_accounts do |t|
      t.belongs_to :user
      t.belongs_to :account

      t.timestamps
    end
  end
end
