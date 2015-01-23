require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { about_me: @user.about_me, cover_photo: @user.cover_photo, email: @user.email, first_name: @user.first_name, image: @user.image, last_name: @user.last_name, password_digest: @user.password_digest, profile_photo: @user.profile_photo }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { about_me: @user.about_me, cover_photo: @user.cover_photo, email: @user.email, first_name: @user.first_name, image: @user.image, last_name: @user.last_name, password_digest: @user.password_digest, profile_photo: @user.profile_photo }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
