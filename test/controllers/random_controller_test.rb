require 'test_helper'

class RandomControllerTest < ActionController::TestCase
  test "should get oneques" do
    get :oneques
    assert_response :success
  end

  test "should get quespaper" do
    get :quespaper
    assert_response :success
  end

end
