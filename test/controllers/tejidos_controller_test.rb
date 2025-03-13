require "test_helper"

class TejidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tejido = tejidos(:one)
  end

  test "should get index" do
    get tejidos_url
    assert_response :success
  end

  test "should get new" do
    get new_tejido_url
    assert_response :success
  end

  test "should create tejido" do
    assert_difference("Tejido.count") do
      post tejidos_url, params: { tejido: { cantidad: @tejido.cantidad, color: @tejido.color, model: @tejido.model } }
    end

    assert_redirected_to tejido_url(Tejido.last)
  end

  test "should show tejido" do
    get tejido_url(@tejido)
    assert_response :success
  end

  test "should get edit" do
    get edit_tejido_url(@tejido)
    assert_response :success
  end

  test "should update tejido" do
    patch tejido_url(@tejido), params: { tejido: { cantidad: @tejido.cantidad, color: @tejido.color, model: @tejido.model } }
    assert_redirected_to tejido_url(@tejido)
  end

  test "should destroy tejido" do
    assert_difference("Tejido.count", -1) do
      delete tejido_url(@tejido)
    end

    assert_redirected_to tejidos_url
  end
end
