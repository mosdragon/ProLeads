require 'test_helper'

class Leads2sControllerTest < ActionController::TestCase
  setup do
    @leads2 = leads2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leads2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leads2" do
    assert_difference('Leads2.count') do
      post :create, leads2: { deadline: @leads2.deadline, hourly_rate: @leads2.hourly_rate, lead_developer: @leads2.lead_developer, name: @leads2.name, note: @leads2.note, status: @leads2.status }
    end

    assert_redirected_to leads2_path(assigns(:leads2))
  end

  test "should show leads2" do
    get :show, id: @leads2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leads2
    assert_response :success
  end

  test "should update leads2" do
    patch :update, id: @leads2, leads2: { deadline: @leads2.deadline, hourly_rate: @leads2.hourly_rate, lead_developer: @leads2.lead_developer, name: @leads2.name, note: @leads2.note, status: @leads2.status }
    assert_redirected_to leads2_path(assigns(:leads2))
  end

  test "should destroy leads2" do
    assert_difference('Leads2.count', -1) do
      delete :destroy, id: @leads2
    end

    assert_redirected_to leads2s_path
  end
end
