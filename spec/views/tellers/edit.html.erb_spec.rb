require 'spec_helper'

describe "tellers/edit" do
  before(:each) do
    @teller = assign(:teller, stub_model(Teller,
      :name => "MyString"
    ))
  end

  it "renders the edit teller form" do
    render

    assert_select "form[action=?][method=?]", teller_path(@teller), "post" do
      assert_select "input#teller_name[name=?]", "teller[name]"
    end
  end
end
