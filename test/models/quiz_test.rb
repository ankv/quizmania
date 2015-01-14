require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  def setup
    @quiz = Quiz.new(name: "new quiz")
  end

  test "name should be present" do
    @quiz.name = ""
    assert_not @quiz.valid?
  end

  test "name should be too long" do
    @quiz.name = "a"*21
    assert_not @quiz.valid?
  end
end
