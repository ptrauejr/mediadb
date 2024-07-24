require "test_helper"

class PerformerTest < ActiveSupport::TestCase
  def setup
    @performer = performers(:valid)
  end

  test "performer should be valid" do
    assert @performer.valid?
  end
end
