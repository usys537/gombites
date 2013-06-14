require 'test_helper'

class CustomTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do 
  	get '/login'
  	assert_response :success
  end

  test "that /logout route opens the logout page" do 
  	get '/logout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that /register route opens the register page" do 
  	get '/register'
  	assert_response :success
  end

  test "that / route opens the home page" do 
  	get '/'
  	assert_response :success
  end

  test "that /forums route opens the forums page" do 
  	get '/forums'
  	assert_response :success
  end
  
  test "that a profile page works" do
    get '/users/Usman%20Shamaki'
    assert_response :success
  end
end
