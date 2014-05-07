require 'spec_helper'

describe "tellers/index" do
  before(:each) do
    assign(:tellers, [
      stub_model(Teller,
        :name => "Name"
      ),
      stub_model(Teller,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tellers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
