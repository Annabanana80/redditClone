require 'test_helper'

class AdvertisementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advertisement_index_url
    assert_response :success
  end

  test "should get show" do
    get advertisement_show_url
    assert_response :success
  end

  test "should get new" do
    get advertisement_new_url
    assert_response :success
  end

  test "should get create" do
    get advertisement_create_url
    assert_response :success
  end

end
