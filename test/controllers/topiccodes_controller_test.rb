require 'test_helper'

class TopiccodesControllerTest < ActionController::TestCase
  setup do
    @topiccode = topiccodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topiccodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topiccode" do
    assert_difference('Topiccode.count') do
      post :create, topiccode: { active: @topiccode.active, scode: @topiccode.scode, tcode: @topiccode.tcode, tname: @topiccode.tname }
    end

    assert_redirected_to topiccode_path(assigns(:topiccode))
  end

  test "should show topiccode" do
    get :show, id: @topiccode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topiccode
    assert_response :success
  end

  test "should update topiccode" do
    patch :update, id: @topiccode, topiccode: { active: @topiccode.active, scode: @topiccode.scode, tcode: @topiccode.tcode, tname: @topiccode.tname }
    assert_redirected_to topiccode_path(assigns(:topiccode))
  end

  test "should destroy topiccode" do
    assert_difference('Topiccode.count', -1) do
      delete :destroy, id: @topiccode
    end

    assert_redirected_to topiccodes_path
  end
end
