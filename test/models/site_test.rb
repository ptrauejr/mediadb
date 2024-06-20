require "test_helper"

class SiteTest < ActiveSupport::TestCase
  def setup
    @site = sites(:valid)
  end

  test "site should be valid" do
    assert @site.valid?
  end

  test "name should be present" do
    @site.name = nil
    refute @site.valid?, "site is valid without a name"
    assert_not_nil @site.errors[:name], 'no validation error for name present'
  end

  test "url should be present" do
    @site.url = nil
    refute @site.valid?, "site is valid without a url"
    assert_not_nil @site.errors[:url], 'no validation error for url present'
  end

end
