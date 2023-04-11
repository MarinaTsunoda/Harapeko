require "test_helper"

class Public::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get public_homes_top_url
    assert_response :success
  end

  test "should get search" do
    get public_homes_search_url
    assert_response :success
  end

  test "should get tag_select" do
    get public_homes_tag_select_url
    assert_response :success
  end
end
