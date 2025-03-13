require "application_system_test_case"

class TejidosTest < ApplicationSystemTestCase
  setup do
    @tejido = tejidos(:one)
  end

  test "visiting the index" do
    visit tejidos_url
    assert_selector "h1", text: "Tejidos"
  end

  test "should create tejido" do
    visit tejidos_url
    click_on "New tejido"

    fill_in "Cantidad", with: @tejido.cantidad
    fill_in "Color", with: @tejido.color
    fill_in "Model", with: @tejido.model
    click_on "Create Tejido"

    assert_text "Tejido was successfully created"
    click_on "Back"
  end

  test "should update Tejido" do
    visit tejido_url(@tejido)
    click_on "Edit this tejido", match: :first

    fill_in "Cantidad", with: @tejido.cantidad
    fill_in "Color", with: @tejido.color
    fill_in "Model", with: @tejido.model
    click_on "Update Tejido"

    assert_text "Tejido was successfully updated"
    click_on "Back"
  end

  test "should destroy Tejido" do
    visit tejido_url(@tejido)
    click_on "Destroy this tejido", match: :first

    assert_text "Tejido was successfully destroyed"
  end
end
