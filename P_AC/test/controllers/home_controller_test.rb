require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get quienes_somos" do
    get :quienes_somos
    assert_response :success
  end

end
