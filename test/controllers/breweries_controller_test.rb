require 'test_helper'

class BreweriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get breweries_index_url
    assert_response :success
  end

end
