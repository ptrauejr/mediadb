require "test_helper"

class SceneTest < ActiveSupport::TestCase
  def setup
    @scene = scenes(:valid)
  end

  test "scene should be valid" do
    assert @scene.valid?
  end

  test "name should be present" do
    @scene.name = nil
    refute @scene.valid?, "site is valid without a name"
    assert_not_nil @scene.errors[:name], 'no validation error for name present'
  end
end
