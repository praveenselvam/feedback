require 'test_helper'

class KarmaItemsControllerTest < ActionController::TestCase
  setup do
    @karma_item = karma_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:karma_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create karma_item" do
    assert_difference('KarmaItem.count') do
      post :create, karma_item: { name: @karma_item.name, points: @karma_item.points }
    end

    assert_redirected_to karma_item_path(assigns(:karma_item))
  end

  test "should show karma_item" do
    get :show, id: @karma_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @karma_item
    assert_response :success
  end

  test "should update karma_item" do
    put :update, id: @karma_item, karma_item: { name: @karma_item.name, points: @karma_item.points }
    assert_redirected_to karma_item_path(assigns(:karma_item))
  end

  test "should destroy karma_item" do
    assert_difference('KarmaItem.count', -1) do
      delete :destroy, id: @karma_item
    end

    assert_redirected_to karma_items_path
  end
end
