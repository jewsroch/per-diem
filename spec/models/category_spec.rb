require 'rails_helper'

describe Category do
  it "has a valid factory" do
    expect(FactoryGirl.build(:category)).to be_valid
  end

  it "is invalid without a title" do 
    expect(FactoryGirl.build(:category, title: nil)).not_to be_valid
  end
  
  it "is invalid without a budget" do 
    expect(FactoryGirl.build(:category, budget: nil)).not_to be_valid
  end
end
