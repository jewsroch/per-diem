require 'rails_helper'

describe Account do
  it "has a valid factory" do
    expect(FactoryGirl.build(:account)).to be_valid
  end

  it "is invalid without a name" do 
    expect(FactoryGirl.build(:account, name: nil)).not_to be_valid
  end
  
end
