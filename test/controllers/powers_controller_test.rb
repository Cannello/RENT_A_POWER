require "test_helper"

class PowersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get powers_index_url
    assert_response :success
  end

  test "should get show" do
    get powers_show_url
    assert_response :success
  end
end
