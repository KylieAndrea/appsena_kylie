require "application_system_test_case"

class CrochetsTest < ApplicationSystemTestCase
  setup do
    @crochet = crochets(:one)
  end

  test "visiting the index" do
    visit crochets_url
    assert_selector "h1", text: "Crochets"
  end

  test "should create crochet" do
    visit crochets_url
    click_on "New crochet"

    fill_in "Cantidad", with: @crochet.cantidad
    fill_in "Color", with: @crochet.color
    fill_in "Modelo", with: @crochet.modelo
    click_on "Create Crochet"

    assert_text "Crochet was successfully created"
    click_on "Back"
  end

  test "should update Crochet" do
    visit crochet_url(@crochet)
    click_on "Edit this crochet", match: :first

    fill_in "Cantidad", with: @crochet.cantidad
    fill_in "Color", with: @crochet.color
    fill_in "Modelo", with: @crochet.modelo
    click_on "Update Crochet"

    assert_text "Crochet was successfully updated"
    click_on "Back"
  end

  test "should destroy Crochet" do
    visit crochet_url(@crochet)
    click_on "Destroy this crochet", match: :first

    assert_text "Crochet was successfully destroyed"
  end
end
