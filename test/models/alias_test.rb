require "test_helper"

class AliasTest < ActiveSupport::TestCase
  def setup
    @alias = aliases(:valid)
  end

  test "alias should be valid" do
    assert @alias.valid?
  end

  test "name should be present" do
    @alias.name = nil
    refute @alias.valid?, "alias is valid without a name"
    assert_not_nil @alias.errors[:name], "no validation error for name present"
  end

  test "site should be present" do
    @alias.site = nil
    refute @alias.valid?, "alias is valid without a site relationship"
    assert_not_nil @alias.errors[:site], "no validation error for site present"
  end

  test "person should be present" do
    @alias.person = nil
    refute @alias.valid?, "alias is valid without a person relationship"
    assert_not_nil @alias.errors[:person], "no validation error for person relationship"
  end
end
