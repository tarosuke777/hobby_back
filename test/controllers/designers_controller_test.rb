require "test_helper"

class DesignersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @designer = designers(:one)
  end

  test "should get index" do
    get designers_url, as: :json
    assert_response :success
  end

  test "should create designer" do
    assert_difference("Designer.count") do
      post designers_url, params: { designer: { name: @designer.name } }, as: :json
    end

    assert_response :created
  end

  test "should show designer" do
    get designer_url(@designer), as: :json
    assert_response :success
  end

  test "should update designer" do
    patch designer_url(@designer), params: { designer: { name: @designer.name } }, as: :json
    assert_response :success
  end

  test "should destroy designer" do
    assert_difference("Designer.count", -1) do
      delete designer_url(@designer), as: :json
    end

    assert_response :no_content
  end
end
