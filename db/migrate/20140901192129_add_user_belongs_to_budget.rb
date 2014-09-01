class AddUserBelongsToBudget < ActiveRecord::Migration
  def change
    add_reference :users, :budget, index: true
  end
end
