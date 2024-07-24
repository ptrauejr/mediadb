require "test_helper"

class AliasesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_alias_url
    assert_response :success
  end

  test "should get index" do
    get aliases_url
    assert_response :success
  end

end
