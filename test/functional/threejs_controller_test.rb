require 'test_helper'

class ThreejsControllerTest < ActionController::TestCase
  setup do
    @threej = threejs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threejs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create threej" do
    assert_difference('Threej.count') do
      post :create, threej: {  }
    end

    assert_redirected_to threej_path(assigns(:threej))
  end

  test "should show threej" do
    get :show, id: @threej
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @threej
    assert_response :success
  end

  test "should update threej" do
    put :update, id: @threej, threej: {  }
    assert_redirected_to threej_path(assigns(:threej))
  end

  test "should destroy threej" do
    assert_difference('Threej.count', -1) do
      delete :destroy, id: @threej
    end

    assert_redirected_to threejs_path
  end
end
