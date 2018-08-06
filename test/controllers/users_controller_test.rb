require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get '/signup'
    assert_response :success
  end


test "can create an User" do
  get "/signup"
  assert_response :success
 
  post "/users",
    params: { user: { first_name: "can create", last_name: "article successfully." } }
  assert_response :redirect
  follow_redirect!
  assert_response :success
  assert_select "p", "first_name:\n  can create"
end

  test "should get show" do
    get 'users/user_id'
    assert_response :success
  end

end
