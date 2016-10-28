require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get Users" do
    get :Users
    assert_response :success
  end

end
