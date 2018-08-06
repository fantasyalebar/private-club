require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_path
    assert_response :success
end 

  test "should get about" do
    get static_pages_about_path
    assert_response :success
  end

end
