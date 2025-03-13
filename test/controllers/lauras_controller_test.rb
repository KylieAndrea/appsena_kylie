require "test_helper"

class LaurasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laura = lauras(:one)
  end

  test "should get index" do
    get lauras_url
    assert_response :success
  end

  test "should get new" do
    get new_laura_url
    assert_response :success
  end

  test "should create laura" do
    assert_difference("Laura.count") do
      post lauras_url, params: { laura: { caracteristicas: @laura.caracteristicas, personalidad: @laura.personalidad } }
    end

    assert_redirected_to laura_url(Laura.last)
  end

  test "should show laura" do
    get laura_url(@laura)
    assert_response :success
  end

  test "should get edit" do
    get edit_laura_url(@laura)
    assert_response :success
  end

  test "should update laura" do
    patch laura_url(@laura), params: { laura: { caracteristicas: @laura.caracteristicas, personalidad: @laura.personalidad } }
    assert_redirected_to laura_url(@laura)
  end

  test "should destroy laura" do
    assert_difference("Laura.count", -1) do
      delete laura_url(@laura)
    end

    assert_redirected_to lauras_url
  end
end
