require "test_helper"

class AliasesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aliases_new_url
    assert_response :success
  end

  test "should get create" do
    get aliases_create_url
    assert_response :success
  end

  test "should get update" do
    get aliases_update_url
    assert_response :success
  end

  test "should get destroy" do
    get aliases_destroy_url
    assert_response :success
  end

  test "should get index" do
    get aliases_index_url
    assert_response :success
  end

  test "should get show" do
    get aliases_show_url
    assert_response :success
  end
end
