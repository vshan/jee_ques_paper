require 'test_helper'

class SubtopiccodesControllerTest < ActionController::TestCase
  setup do
    @subtopiccode = subtopiccodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subtopiccodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subtopiccode" do
    assert_difference('Subtopiccode.count') do
      post :create, subtopiccode: { active: @subtopiccode.active, stcode: @subtopiccode.stcode, stname: @subtopiccode.stname, tcode: @subtopiccode.tcode }
    end

    assert_redirected_to subtopiccode_path(assigns(:subtopiccode))
  end

  test "should show subtopiccode" do
    get :show, id: @subtopiccode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subtopiccode
    assert_response :success
  end

  test "should update subtopiccode" do
    patch :update, id: @subtopiccode, subtopiccode: { active: @subtopiccode.active, stcode: @subtopiccode.stcode, stname: @subtopiccode.stname, tcode: @subtopiccode.tcode }
    assert_redirected_to subtopiccode_path(assigns(:subtopiccode))
  end

  test "should destroy subtopiccode" do
    assert_difference('Subtopiccode.count', -1) do
      delete :destroy, id: @subtopiccode
    end

    assert_redirected_to subtopiccodes_path
  end
end
