require 'test_helper'

class LinhaItemsControllerTest < ActionController::TestCase
  setup do
    @linha_item = linha_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:linha_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create linha_item" do
    assert_difference('LinhaItem.count') do
      post :create, :linha_item => @linha_item.attributes
    end

    assert_redirected_to linha_item_path(assigns(:linha_item))
  end

  test "should show linha_item" do
    get :show, :id => @linha_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @linha_item.to_param
    assert_response :success
  end

  test "should update linha_item" do
    put :update, :id => @linha_item.to_param, :linha_item => @linha_item.attributes
    assert_redirected_to linha_item_path(assigns(:linha_item))
  end

  test "should destroy linha_item" do
    assert_difference('LinhaItem.count', -1) do
      delete :destroy, :id => @linha_item.to_param
    end

    assert_redirected_to linha_items_path
  end
end
