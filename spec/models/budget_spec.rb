require 'rails_helper'

describe Budget do
  it "has a valid factory" do
    expect(FactoryGirl.build(:budget)).to be_valid
  end

  it "is invalid without a start date" do 
    expect(FactoryGirl.build(:budget, start_date: nil)).not_to be_valid
  end

  it "is invalid without an end date" do 
    expect(FactoryGirl.build(:budget, end_date: nil)).not_to be_valid
  end
end
