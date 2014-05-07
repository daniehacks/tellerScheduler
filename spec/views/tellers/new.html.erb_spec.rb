require 'spec_helper'

describe "tellers/new" do
  before(:each) do
    assign(:teller, stub_model(Teller,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new teller form" do
    render

    assert_select "form[action=?][method=?]", tellers_path, "post" do
      assert_select "input#teller_name[name=?]", "teller[name]"
    end
  end
end
