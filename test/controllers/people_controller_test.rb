require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

end
