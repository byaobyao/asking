require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  fixtures :tests

  test "should get new" do
    get :new, test_id: tests(:math_test).id
    assert_response :success
  end

end
