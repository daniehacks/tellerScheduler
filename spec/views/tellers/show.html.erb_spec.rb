require 'spec_helper'

describe "tellers/show" do
  before(:each) do
    @teller = assign(:teller, stub_model(Teller,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
