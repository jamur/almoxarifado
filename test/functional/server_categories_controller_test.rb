require 'test_helper'

class ServerCategoriesControllerTest < ActionController::TestCase
  setup do
    @server_category = server_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:server_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create server_category" do
    assert_difference('ServerCategory.count') do
      post :create, server_category: @server_category.attributes
    end

    assert_redirected_to server_category_path(assigns(:server_category))
  end

  test "should show server_category" do
    get :show, id: @server_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @server_category.to_param
    assert_response :success
  end

  test "should update server_category" do
    put :update, id: @server_category.to_param, server_category: @server_category.attributes
    assert_redirected_to server_category_path(assigns(:server_category))
  end

  test "should destroy server_category" do
    assert_difference('ServerCategory.count', -1) do
      delete :destroy, id: @server_category.to_param
    end

    assert_redirected_to server_categories_path
  end
end
