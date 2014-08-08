require 'test_helper'

class PintsControllerTest < ActionController::TestCase
  setup do
    @pint = pints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pint" do
    assert_difference('Pint.count') do
      post :create, pint: { description: @pint.description, image: @pint.image, title: @pint.title }
    end

    assert_redirected_to pint_path(assigns(:pint))
  end

  test "should show pint" do
    get :show, id: @pint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pint
    assert_response :success
  end

  test "should update pint" do
    patch :update, id: @pint, pint: { description: @pint.description, image: @pint.image, title: @pint.title }
    assert_redirected_to pint_path(assigns(:pint))
  end

  test "should destroy pint" do
    assert_difference('Pint.count', -1) do
      delete :destroy, id: @pint
    end

    assert_redirected_to pints_path
  end
end
