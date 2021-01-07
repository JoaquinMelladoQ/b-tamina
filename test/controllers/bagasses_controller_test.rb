require 'test_helper'

class BagassesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bagasses_new_url
    assert_response :success
  end

  test "should get create" do
    get bagasses_create_url
    assert_response :success
  end

end
