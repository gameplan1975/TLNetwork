require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get prepare" do
    get games_prepare_url
    assert_response :success
  end

  test "should get play" do
    get games_play_url
    assert_response :success
  end

  test "should get result" do
    get games_result_url
    assert_response :success
  end

end
