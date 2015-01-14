require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  def setup
    @question = Question.new(statement: "statement", correct_choice_id: 5)
  end

  test "correct choice id should be present" do
    @question.correct_choice_id = ""
    assert_not @question.valid?
  end

  test "statement should be present" do
    @question.statement = ""
    assert_not @question.valid?
  end

  test "statement should not be too long" do
    @question.statement = "a"*256
    assert_not @question.valid?
  end

  test "correct choice id should be valid" do
    @question.correct_choice_id = 0
    assert @question.valid?
  end

  test "correct choice id should not be negative" do
    @question.correct_choice_id = -3
    assert_not @question.valid?
  end

  test "correct_choice_id should not greater than total question" do
    @question.correct_choice_id = 9
    assert_not @question.valid?
  end

end
