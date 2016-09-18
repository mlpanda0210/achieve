require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  test "should get indexsudo" do
    get :indexsudo
    assert_response :success
  end

  test "should get service" do
    get :service
    assert_response :success
  end

  test "should get postgresql" do
    get :postgresql
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

end
