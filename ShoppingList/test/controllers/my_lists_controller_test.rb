require 'test_helper'

class MyListsControllerTest < ActionController::TestCase
  setup do
    @my_list = my_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_list" do
    assert_difference('MyList.count') do
      post :create, my_list: { name: @my_list.name }
    end

    assert_redirected_to my_list_path(assigns(:my_list))
  end

  test "should show my_list" do
    get :show, id: @my_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_list
    assert_response :success
  end

  test "should update my_list" do
    patch :update, id: @my_list, my_list: { name: @my_list.name }
    assert_redirected_to my_list_path(assigns(:my_list))
  end

  test "should destroy my_list" do
    assert_difference('MyList.count', -1) do
      delete :destroy, id: @my_list
    end

    assert_redirected_to my_lists_path
  end
end
