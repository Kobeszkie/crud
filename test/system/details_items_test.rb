require "application_system_test_case"

class DetailsItemsTest < ApplicationSystemTestCase
  setup do
    @details_item = details_items(:one)
  end

  test "visiting the index" do
    visit details_items_url
    assert_selector "h1", text: "Details items"
  end

  test "should create details item" do
    visit details_items_url
    click_on "New details item"

    fill_in "Name", with: @details_item.name
    fill_in "Price", with: @details_item.price
    click_on "Create Details item"

    assert_text "Details item was successfully created"
    click_on "Back"
  end

  test "should update Details item" do
    visit details_item_url(@details_item)
    click_on "Edit this details item", match: :first

    fill_in "Name", with: @details_item.name
    fill_in "Price", with: @details_item.price
    click_on "Update Details item"

    assert_text "Details item was successfully updated"
    click_on "Back"
  end

  test "should destroy Details item" do
    visit details_item_url(@details_item)
    click_on "Destroy this details item", match: :first

    assert_text "Details item was successfully destroyed"
  end
end
