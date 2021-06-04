require "test_helper"

class SushiRollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sushi_roll = sushi_rolls(:one)
  end

  test "should get index" do
    get sushi_rolls_url, as: :json
    assert_response :success
  end

  test "should create sushi_roll" do
    assert_difference('SushiRoll.count') do
      post sushi_rolls_url, params: { sushi_roll: { description: @sushi_roll.description, image: @sushi_roll.image, name: @sushi_roll.name, order_id: @sushi_roll.order_id, price: @sushi_roll.price } }, as: :json
    end

    assert_response 201
  end

  test "should show sushi_roll" do
    get sushi_roll_url(@sushi_roll), as: :json
    assert_response :success
  end

  test "should update sushi_roll" do
    patch sushi_roll_url(@sushi_roll), params: { sushi_roll: { description: @sushi_roll.description, image: @sushi_roll.image, name: @sushi_roll.name, order_id: @sushi_roll.order_id, price: @sushi_roll.price } }, as: :json
    assert_response 200
  end

  test "should destroy sushi_roll" do
    assert_difference('SushiRoll.count', -1) do
      delete sushi_roll_url(@sushi_roll), as: :json
    end

    assert_response 204
  end
end
