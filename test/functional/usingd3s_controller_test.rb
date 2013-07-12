require 'test_helper'

class Usingd3sControllerTest < ActionController::TestCase
  setup do
    @usingd3 = usingd3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usingd3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usingd3" do
    assert_difference('Usingd3.count') do
      post :create, usingd3: {  }
    end

    assert_redirected_to usingd3_path(assigns(:usingd3))
  end

  test "should show usingd3" do
    get :show, id: @usingd3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usingd3
    assert_response :success
  end

  test "should update usingd3" do
    put :update, id: @usingd3, usingd3: {  }
    assert_redirected_to usingd3_path(assigns(:usingd3))
  end

  test "should destroy usingd3" do
    assert_difference('Usingd3.count', -1) do
      delete :destroy, id: @usingd3
    end

    assert_redirected_to usingd3s_path
  end
end
