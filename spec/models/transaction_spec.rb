require 'rails_helper'

describe Transaction do
  it "has a valid factory" do
    expect(FactoryGirl.build(:transaction)).to be_valid
  end

  it "is invalid without a transaction date" do
    expect(FactoryGirl.build(:transaction, transaction_date: nil)).not_to be_valid
  end
end