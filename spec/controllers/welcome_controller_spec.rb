require 'spec_helper'

describe WelcomeController, :type => :controller do
	describe "GET index" do
  		it "should get index" do
  			get :index
  			response.should be_successful
  		end
	end
end
