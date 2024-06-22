require "test_helper"

class PersonTest < ActiveSupport::TestCase
  def setup
    @person = people(:valid)
  end

  test "person should be valid" do
    assert @person.valid?
  end

  test "name should be present" do
    @person.name = nil
    refute @person.valid?, "person is valid without a name"
    assert_not_nil @person.errors[:name], "no validation error for name present"
  end
end