require 'test_helper'

class PongsControllerTest < ActionController::TestCase
  setup do
    @pong = pongs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pongs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pong" do
    assert_difference('Pong.count') do
      post :create, pong: {  }
    end

    assert_redirected_to pong_path(assigns(:pong))
  end

  test "should show pong" do
    get :show, id: @pong
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pong
    assert_response :success
  end

  test "should update pong" do
    put :update, id: @pong, pong: {  }
    assert_redirected_to pong_path(assigns(:pong))
  end

  test "should destroy pong" do
    assert_difference('Pong.count', -1) do
      delete :destroy, id: @pong
    end

    assert_redirected_to pongs_path
  end
end
