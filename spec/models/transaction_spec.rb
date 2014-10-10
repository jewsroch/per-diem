require 'rails_helper'

describe Transaction do

  let(:transaction) { FactoryGirl.build(:transaction) }

  it "has a valid factory" do
    expect(transaction).to be_valid
  end

  it "is invalid without a transaction date" do
    expect(FactoryGirl.build(:transaction, transaction_date: nil)).not_to be_valid
  end

  context 'when confirmed' do
    it "is active" do
      transaction.confirm
      expect(transaction.state).to eq('active')
    end

    it "can be deferred" do
      transaction.confirm
      transaction.defer
      expect(transaction.state).to eq('pending')
    end
  end

  context 'when canceled' do
    it "is canceled" do
      transaction.cancel
      expect(transaction.state).to eq('canceled')
    end

    it "can be re-confirmed" do
      transaction.cancel
      transaction.confirm
      expect(transaction.state).to eq('active')
    end
  end

end