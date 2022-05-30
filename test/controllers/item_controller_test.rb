require "test_helper"

class ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get item_name:string_url
    assert_response :success
  end

  test "should get price:integer" do
    get item_price:integer_url
    assert_response :success
  end
end
