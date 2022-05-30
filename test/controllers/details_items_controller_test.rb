require "test_helper"

class DetailsItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @details_item = details_items(:one)
  end

  test "should get index" do
    get details_items_url
    assert_response :success
  end

  test "should get new" do
    get new_details_item_url
    assert_response :success
  end

  test "should create details_item" do
    assert_difference("DetailsItem.count") do
      post details_items_url, params: { details_item: { name: @details_item.name, price: @details_item.price } }
    end

    assert_redirected_to details_item_url(DetailsItem.last)
  end

  test "should show details_item" do
    get details_item_url(@details_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_details_item_url(@details_item)
    assert_response :success
  end

  test "should update details_item" do
    patch details_item_url(@details_item), params: { details_item: { name: @details_item.name, price: @details_item.price } }
    assert_redirected_to details_item_url(@details_item)
  end

  test "should destroy details_item" do
    assert_difference("DetailsItem.count", -1) do
      delete details_item_url(@details_item)
    end

    assert_redirected_to details_items_url
  end
end
