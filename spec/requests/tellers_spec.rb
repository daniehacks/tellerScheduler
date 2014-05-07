require 'spec_helper'

describe "Tellers" do
  describe "GET /tellers" do
    it "works! (now write some real specs)" do
      get tellers_path
      expect(response.status).to be(200)
    end
  end
end
