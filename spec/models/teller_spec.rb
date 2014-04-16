require 'spec_helper'

describe Teller do
  it "has a valid factory" do
  	factory = FactoryGirl.create(:teller)
  	expect(factory).to be_valid
  end

  it "is invalid without a name" do
  	expect(FactoryGirl.build(:teller, name: nil)).not_to be_valid
  end
end
