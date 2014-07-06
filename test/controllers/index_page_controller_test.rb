require 'test_helper'

class IndexPageControllerTest < ActionController::TestCase
  test "should get searchIndex" do
    get :searchIndex
    assert_response :success
  end

end
