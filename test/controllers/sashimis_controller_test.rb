require "test_helper"

class SashimisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sashimi = sashimis(:one)
  end

  test "should get index" do
    get sashimis_url, as: :json
    assert_response :success
  end

  test "should create sashimi" do
    assert_difference('Sashimi.count') do
      post sashimis_url, params: { sashimi: { description: @sashimi.description, image: @sashimi.image, name: @sashimi.name, order_id: @sashimi.order_id, price: @sashimi.price } }, as: :json
    end

    assert_response 201
  end

  test "should show sashimi" do
    get sashimi_url(@sashimi), as: :json
    assert_response :success
  end

  test "should update sashimi" do
    patch sashimi_url(@sashimi), params: { sashimi: { description: @sashimi.description, image: @sashimi.image, name: @sashimi.name, order_id: @sashimi.order_id, price: @sashimi.price } }, as: :json
    assert_response 200
  end

  test "should destroy sashimi" do
    assert_difference('Sashimi.count', -1) do
      delete sashimi_url(@sashimi), as: :json
    end

    assert_response 204
  end
end
