require 'test_helper'

class DealsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get deals_new_url
    assert_response :success
  end

end
