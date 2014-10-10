class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :account
  belongs_to :category

  monetize :amount_cents

  include AASM

  aasm :column => 'state' do
    state :pending, :initial => true
    state :active
    state :canceled

    event :confirm do
      transitions :from => [:pending, :canceled], :to => :active
    end

    event :defer do
      transitions :from => :active, :to => :pending
    end

    event :cancel do
      transitions :from => [:active, :pending], :to => :canceled
    end
  end

  validates :amount, presence: true
  validates :transaction_date, presence: true
  validates :user, presence: true
  validates :category, presence: true
  validates :account, presence: true
end
