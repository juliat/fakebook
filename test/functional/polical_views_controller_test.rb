require 'test_helper'

class PolicalViewsControllerTest < ActionController::TestCase
  setup do
    @polical_view = polical_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:polical_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create polical_view" do
    assert_difference('PolicalView.count') do
      post :create, polical_view: { id: @polical_view.id, name: @polical_view.name }
    end

    assert_redirected_to polical_view_path(assigns(:polical_view))
  end

  test "should show polical_view" do
    get :show, id: @polical_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @polical_view
    assert_response :success
  end

  test "should update polical_view" do
    put :update, id: @polical_view, polical_view: { id: @polical_view.id, name: @polical_view.name }
    assert_redirected_to polical_view_path(assigns(:polical_view))
  end

  test "should destroy polical_view" do
    assert_difference('PolicalView.count', -1) do
      delete :destroy, id: @polical_view
    end

    assert_redirected_to polical_views_path
  end
end
