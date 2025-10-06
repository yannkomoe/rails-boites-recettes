require "application_system_test_case"

class RecettesTest < ApplicationSystemTestCase
  setup do
    @recette = recettes(:one)
  end

  test "visiting the index" do
    visit recettes_url
    assert_selector "h1", text: "Recettes"
  end

  test "should create recette" do
    visit recettes_url
    click_on "New recette"

    fill_in "Ingredients", with: @recette.ingredients
    fill_in "Instructions", with: @recette.instructions
    fill_in "Nom", with: @recette.nom
    click_on "Create Recette"

    assert_text "Recette was successfully created"
    click_on "Back"
  end

  test "should update Recette" do
    visit recette_url(@recette)
    click_on "Edit this recette", match: :first

    fill_in "Ingredients", with: @recette.ingredients
    fill_in "Instructions", with: @recette.instructions
    fill_in "Nom", with: @recette.nom
    click_on "Update Recette"

    assert_text "Recette was successfully updated"
    click_on "Back"
  end

  test "should destroy Recette" do
    visit recette_url(@recette)
    click_on "Destroy this recette", match: :first

    assert_text "Recette was successfully destroyed"
  end
end
