require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  test "score should be present" do
    @ans = Answer.new
    @ans.score = ""
    assert_not @ans.valid?
  end
end
