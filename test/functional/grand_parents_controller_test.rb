require 'test_helper'

class GrandParentsControllerTest < ActionController::TestCase
  setup do
    @grand_parent = grand_parents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grand_parents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grand_parent" do
    assert_difference('GrandParent.count') do
      post :create, :grand_parent => @grand_parent.attributes
    end

    assert_redirected_to grand_parent_path(assigns(:grand_parent))
  end

  test "should show grand_parent" do
    get :show, :id => @grand_parent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @grand_parent.to_param
    assert_response :success
  end

  test "should update grand_parent" do
    put :update, :id => @grand_parent.to_param, :grand_parent => @grand_parent.attributes
    assert_redirected_to grand_parent_path(assigns(:grand_parent))
  end

  test "should destroy grand_parent" do
    assert_difference('GrandParent.count', -1) do
      delete :destroy, :id => @grand_parent.to_param
    end

    assert_redirected_to grand_parents_path
  end
end
