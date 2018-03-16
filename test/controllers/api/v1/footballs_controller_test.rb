require 'test_helper'

class Api::V1::FootballsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_footballs_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_footballs_show_url
    assert_response :success
  end

end
