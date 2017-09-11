require 'test_helper'

class GachaControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get gacha_top_url
    assert_response :success
  end

  test "should get execute" do
    get gacha_execute_url
    assert_response :success
  end

end
