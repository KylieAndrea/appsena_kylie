require "test_helper"

class AprendicesControllerTest < ActionDispatch::IntegrationTest
  test "should get ficha" do
    get aprendices_ficha_url
    assert_response :success
  end

  test "should get sede" do
    get aprendices_sede_url
    assert_response :success
  end
end
