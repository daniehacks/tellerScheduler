require 'spec_helper'

describe "home/index" do
	it "should show a link named teller list" do
		render
		expect(rendered).to include("Teller List")
		assert_select "a", :text => "Teller List".to_s, :count => 1
	end
end