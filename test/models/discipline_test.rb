require 'test_helper'

class DisciplineTest < ActiveSupport::TestCase
  
  def setup
    @discipline = Discipline.new(name: "Discipline")
  end

  test "should be valid" do
    assert @discipline.valid?
  end

  test "title should present" do
    @discipline.name = "   "
    assert_not @discipline.valid?
  end
end
