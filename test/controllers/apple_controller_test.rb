require 'test_helper'

class AppleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get apple_new_url
    assert_response :success
  end

  test "should get delete" do
    get apple_delete_url
    assert_response :success
  end

  test "should get update" do
    get apple_update_url
    assert_response :success
  end

end
