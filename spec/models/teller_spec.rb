require 'spec_helper'

describe Teller do
   it "has a factory" do
   		expect(FactoryGirl.create(:teller)).to be_valid
   end
   it "is invalid without a name" do
   		expect(FactoryGirl.build_stubbed(:teller, name: nil)).to_not be_valid
   end
end
