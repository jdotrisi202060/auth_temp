require 'test_helper'

class BlacksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create black" do
    assert_difference('Black.count') do
      post :create, :black => { }
    end

    assert_redirected_to black_path(assigns(:black))
  end

  test "should show black" do
    get :show, :id => blacks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => blacks(:one).to_param
    assert_response :success
  end

  test "should update black" do
    put :update, :id => blacks(:one).to_param, :black => { }
    assert_redirected_to black_path(assigns(:black))
  end

  test "should destroy black" do
    assert_difference('Black.count', -1) do
      delete :destroy, :id => blacks(:one).to_param
    end

    assert_redirected_to blacks_path
  end
end
