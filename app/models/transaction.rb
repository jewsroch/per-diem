class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :account
  belongs_to :category

  include AASM

  aasm :column => 'state' do
    state :pending, :initial => true
    state :active
    state :cancelled

    event :confirm do
      transitions :from => :pending, :to => :active
    end

    event :defer do
      transitions :from => :active, :to => :pending
    end

    event :cancel do
      transitions :from => [:active, :pending], :to => :cancelled
    end
  end
end
