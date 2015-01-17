require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  def setup
    @question = Question.new(text: "To be or not to be?")
  end

  test "should be valid" do
    assert @question.valid?
  end

  test "title should present" do
    @question.text = "   "
    assert_not @question.valid?
  end
end
