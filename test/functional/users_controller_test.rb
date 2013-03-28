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
      post :create, user: { crypted_password: @user.crypted_password, date_of_birth: @user.date_of_birth, email: @user.email, first_name: @user.first_name, gender: @user.gender, interests: @user.interests, last_name: @user.last_name, password_salt: @user.password_salt, persistence_token: @user.persistence_token, political_affiliation: @user.political_affiliation, religion: @user.religion, username: @user.username }
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
    put :update, id: @user, user: { crypted_password: @user.crypted_password, date_of_birth: @user.date_of_birth, email: @user.email, first_name: @user.first_name, gender: @user.gender, interests: @user.interests, last_name: @user.last_name, password_salt: @user.password_salt, persistence_token: @user.persistence_token, political_affiliation: @user.political_affiliation, religion: @user.religion, username: @user.username }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
