require 'test_helper'

class CourserasControllerTest < ActionController::TestCase
  setup do
    @coursera = courseras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courseras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coursera" do
    assert_difference('Coursera.count') do
      post :create, coursera: { cid: @coursera.cid, email: @coursera.email, name: @coursera.name }
    end

    assert_redirected_to coursera_path(assigns(:coursera))
  end

  test "should show coursera" do
    get :show, id: @coursera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coursera
    assert_response :success
  end

  test "should update coursera" do
    patch :update, id: @coursera, coursera: { cid: @coursera.cid, email: @coursera.email, name: @coursera.name }
    assert_redirected_to coursera_path(assigns(:coursera))
  end

  test "should destroy coursera" do
    assert_difference('Coursera.count', -1) do
      delete :destroy, id: @coursera
    end

    assert_redirected_to courseras_path
  end
end
