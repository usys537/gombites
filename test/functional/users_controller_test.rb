require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:usman).profile_name
    assert_response :success
    assert_template 'users/show'
  end

  test "should render a 404 on profile not found" do
  	get :show, id: "doesn't exist"
  	assert_response :not_found 
  end

  test "that variables are assigned on successful profile viewing" do
  	get :show, id: users(:usman).profile_name
  	assert assigns(:user)
  end
end
