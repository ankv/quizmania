require 'test_helper'

class ChoiceTest < ActiveSupport::TestCase
  def setup
    @choice = Choice.new(statement: "newchoice")
  end

  test "should be valid" do
    assert @choice.valid?
  end

  test "statement should not be blank" do
    @choice.statement = ""
    assert_not @choice.valid?
  end

  test "choice statement should not be too long" do
    @choice.statement = "a"*256
    assert_not @choice.valid?
  end
end
