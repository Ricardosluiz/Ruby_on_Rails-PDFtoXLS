require 'test_helper'

class UpsControllerTest < ActionController::TestCase
  setup do
    @up = ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create up" do
    assert_difference('Up.count') do
      post :create, up: { name: @up.name }
    end

    assert_redirected_to up_path(assigns(:up))
  end

  test "should show up" do
    get :show, id: @up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @up
    assert_response :success
  end

  test "should update up" do
    patch :update, id: @up, up: { name: @up.name }
    assert_redirected_to up_path(assigns(:up))
  end

  test "should destroy up" do
    assert_difference('Up.count', -1) do
      delete :destroy, id: @up
    end

    assert_redirected_to ups_path
  end
end
