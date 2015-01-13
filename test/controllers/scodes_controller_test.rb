require 'test_helper'

class ScodesControllerTest < ActionController::TestCase
  setup do
    @scode = scodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scode" do
    assert_difference('Scode.count') do
      post :create, scode: { scode: @scode.scode, sname: @scode.sname }
    end

    assert_redirected_to scode_path(assigns(:scode))
  end

  test "should show scode" do
    get :show, id: @scode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scode
    assert_response :success
  end

  test "should update scode" do
    patch :update, id: @scode, scode: { scode: @scode.scode, sname: @scode.sname }
    assert_redirected_to scode_path(assigns(:scode))
  end

  test "should destroy scode" do
    assert_difference('Scode.count', -1) do
      delete :destroy, id: @scode
    end

    assert_redirected_to scodes_path
  end
end
