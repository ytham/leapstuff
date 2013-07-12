require 'test_helper'

class RectsControllerTest < ActionController::TestCase
  setup do
    @rect = rects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rect" do
    assert_difference('Rect.count') do
      post :create, rect: {  }
    end

    assert_redirected_to rect_path(assigns(:rect))
  end

  test "should show rect" do
    get :show, id: @rect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rect
    assert_response :success
  end

  test "should update rect" do
    put :update, id: @rect, rect: {  }
    assert_redirected_to rect_path(assigns(:rect))
  end

  test "should destroy rect" do
    assert_difference('Rect.count', -1) do
      delete :destroy, id: @rect
    end

    assert_redirected_to rects_path
  end
end
