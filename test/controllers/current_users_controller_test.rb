require 'test_helper'

class CurrentUsersControllerTest < ActionController::TestCase
  setup do
    @current_user = current_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_user" do
    assert_difference('CurrentUser.count') do
      post :create, current_user: { address: @current_user.address, description: @current_user.description, latitude: @current_user.latitude, longitude: @current_user.longitude, title: @current_user.title }
    end

    assert_redirected_to current_user_path(assigns(:current_user))
  end

  test "should show current_user" do
    get :show, id: @current_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_user
    assert_response :success
  end

  test "should update current_user" do
    patch :update, id: @current_user, current_user: { address: @current_user.address, description: @current_user.description, latitude: @current_user.latitude, longitude: @current_user.longitude, title: @current_user.title }
    assert_redirected_to current_user_path(assigns(:current_user))
  end

  test "should destroy current_user" do
    assert_difference('CurrentUser.count', -1) do
      delete :destroy, id: @current_user
    end

    assert_redirected_to current_users_path
  end
end
