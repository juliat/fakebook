require 'test_helper'

class PoliticalViewsControllerTest < ActionController::TestCase
  setup do
    @political_view = political_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:political_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create political_view" do
    assert_difference('PoliticalView.count') do
      post :create, political_view: { id: @political_view.id, name: @political_view.name }
    end

    assert_redirected_to political_view_path(assigns(:political_view))
  end

  test "should show political_view" do
    get :show, id: @political_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @political_view
    assert_response :success
  end

  test "should update political_view" do
    put :update, id: @political_view, political_view: { id: @political_view.id, name: @political_view.name }
    assert_redirected_to political_view_path(assigns(:political_view))
  end

  test "should destroy political_view" do
    assert_difference('PoliticalView.count', -1) do
      delete :destroy, id: @political_view
    end

    assert_redirected_to political_views_path
  end
end
