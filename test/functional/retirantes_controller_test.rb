require 'test_helper'

class RetirantesControllerTest < ActionController::TestCase
  setup do
    @retirante = retirantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retirantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retirante" do
    assert_difference('Retirante.count') do
      post :create, :retirante => @retirante.attributes
    end

    assert_redirected_to retirante_path(assigns(:retirante))
  end

  test "should show retirante" do
    get :show, :id => @retirante.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @retirante.to_param
    assert_response :success
  end

  test "should update retirante" do
    put :update, :id => @retirante.to_param, :retirante => @retirante.attributes
    assert_redirected_to retirante_path(assigns(:retirante))
  end

  test "should destroy retirante" do
    assert_difference('Retirante.count', -1) do
      delete :destroy, :id => @retirante.to_param
    end

    assert_redirected_to retirantes_path
  end
end
