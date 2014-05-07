require "spec_helper"

describe TellersController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tellers").to route_to("tellers#index")
    end

    it "routes to #new" do
      expect(:get => "/tellers/new").to route_to("tellers#new")
    end

    it "routes to #show" do
      expect(:get => "/tellers/1").to route_to("tellers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tellers/1/edit").to route_to("tellers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tellers").to route_to("tellers#create")
    end

    it "routes to #update" do
      expect(:put => "/tellers/1").to route_to("tellers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tellers/1").to route_to("tellers#destroy", :id => "1")
    end

  end
end
