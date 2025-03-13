require "application_system_test_case"

class LaurasTest < ApplicationSystemTestCase
  setup do
    @laura = lauras(:one)
  end

  test "visiting the index" do
    visit lauras_url
    assert_selector "h1", text: "Lauras"
  end

  test "should create laura" do
    visit lauras_url
    click_on "New laura"

    fill_in "Caracteristicas", with: @laura.caracteristicas
    fill_in "Personalidad", with: @laura.personalidad
    click_on "Create Laura"

    assert_text "Laura was successfully created"
    click_on "Back"
  end

  test "should update Laura" do
    visit laura_url(@laura)
    click_on "Edit this laura", match: :first

    fill_in "Caracteristicas", with: @laura.caracteristicas
    fill_in "Personalidad", with: @laura.personalidad
    click_on "Update Laura"

    assert_text "Laura was successfully updated"
    click_on "Back"
  end

  test "should destroy Laura" do
    visit laura_url(@laura)
    click_on "Destroy this laura", match: :first

    assert_text "Laura was successfully destroyed"
  end
end
