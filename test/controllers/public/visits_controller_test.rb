require "test_helper"

class Public::VisitsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_visits_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_visits_destroy_url
    assert_response :success
  end
end
