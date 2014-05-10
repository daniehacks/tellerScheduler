require 'spec_helper'

describe TellersController do

  # This should return the minimal set of attributes required to create a valid
  # Teller. As you add validations to Teller, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TellersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tellers as @tellers" do
      teller = Teller.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:tellers)).to eq([teller])
    end
  end

  describe "GET show" do
    it "assigns the requested teller as @teller" do
      teller = Teller.create! valid_attributes
      get :show, {:id => teller.to_param}, valid_session
      expect(assigns(:teller)).to eq(teller)
    end
  end

  describe "GET new" do
    it "assigns a new teller as @teller" do
      get :new, {}, valid_session
      expect(assigns(:teller)).to be_a_new(Teller)
    end
  end

  describe "GET edit" do
    it "assigns the requested teller as @teller" do
      teller = Teller.create! valid_attributes
      get :edit, {:id => teller.to_param}, valid_session
      expect(assigns(:teller)).to eq(teller)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Teller" do
        expect {
          post :create, {:teller => valid_attributes}, valid_session
        }.to change(Teller, :count).by(1)
      end

      it "assigns a newly created teller as @teller" do
        post :create, {:teller => valid_attributes}, valid_session
        expect(assigns(:teller)).to be_a(Teller)
        expect(assigns(:teller)).to be_persisted
      end

      it "redirects to the created teller" do
        post :create, {:teller => valid_attributes}, valid_session
        expect(response).to redirect_to(Teller.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved teller as @teller" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Teller).to receive(:save).and_return(false)
        post :create, {:teller => { "name" => "invalid value" }}, valid_session
        expect(assigns(:teller)).to be_a_new(Teller)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Teller).to receive(:save).and_return(false)
        post :create, {:teller => { "name" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested teller" do
        teller = Teller.create! valid_attributes
        # Assuming there are no other tellers in the database, this
        # specifies that the Teller created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Teller).to receive(:update).with({ "name" => "MyString" })
        put :update, {:id => teller.to_param, :teller => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested teller as @teller" do
        teller = Teller.create! valid_attributes
        put :update, {:id => teller.to_param, :teller => valid_attributes}, valid_session
        expect(assigns(:teller)).to eq(teller)
      end

      it "redirects to the teller" do
        teller = Teller.create! valid_attributes
        put :update, {:id => teller.to_param, :teller => valid_attributes}, valid_session
        expect(response).to redirect_to(teller)
      end
    end

    describe "with invalid params" do
      it "assigns the teller as @teller" do
        teller = Teller.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Teller).to receive(:save).and_return(false)
        put :update, {:id => teller.to_param, :teller => { "name" => "invalid value" }}, valid_session
        expect(assigns(:teller)).to eq(teller)
      end

      it "re-renders the 'edit' template" do
        teller = Teller.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Teller).to receive(:save).and_return(false)
        put :update, {:id => teller.to_param, :teller => { "name" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested teller" do
      teller = Teller.create! valid_attributes
      expect {
        delete :destroy, {:id => teller.to_param}, valid_session
      }.to change(Teller, :count).by(-1)
    end

    it "redirects to the tellers list" do
      teller = Teller.create! valid_attributes
      delete :destroy, {:id => teller.to_param}, valid_session
      expect(response).to redirect_to(tellers_url)
    end
  end

end
