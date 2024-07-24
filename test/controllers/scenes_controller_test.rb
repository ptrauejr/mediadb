require "test_helper"

class ScenesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_scene_url
    assert_response :success
  end

  test "should get index" do
    get scenes_url
    assert_response :success
  end
end
