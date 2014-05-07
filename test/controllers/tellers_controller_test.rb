require 'test_helper'

class TellersControllerTest < ActionController::TestCase
  setup do
    @teller = tellers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tellers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teller" do
    assert_difference('Teller.count') do
      post :create, teller: { name: @teller.name }
    end

    assert_redirected_to teller_path(assigns(:teller))
  end

  test "should show teller" do
    get :show, id: @teller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teller
    assert_response :success
  end

  test "should update teller" do
    patch :update, id: @teller, teller: { name: @teller.name }
    assert_redirected_to teller_path(assigns(:teller))
  end

  test "should destroy teller" do
    assert_difference('Teller.count', -1) do
      delete :destroy, id: @teller
    end

    assert_redirected_to tellers_path
  end
end
