require 'test_helper'

class GuestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get guests_new_url
    assert_response :success
  end

  test "should get create" do
    get guests_create_url
    assert_response :success
  end

end
