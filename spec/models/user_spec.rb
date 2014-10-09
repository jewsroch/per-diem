require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid without a first_name" do 
    expect(FactoryGirl.build(:user, first_name: nil)).not_to be_valid
  end

  it "has 2 accounts" do
    expect(FactoryGirl.build(:user_with_accounts).accounts.length).to eq(2)
  end  
end
