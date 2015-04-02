require 'test_helper'

class ThermometersControllerTest < ActionController::TestCase
  setup do
    @thermometer = thermometers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermometers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermometer_mailer" do
    assert_difference('Thermometer.count') do
      post :create, thermometer_mailer: { temperature: @thermometer.temperature }
    end

    assert_redirected_to thermometer_path(assigns(:thermometer_mailer))
  end

  test "should show thermometer_mailer" do
    get :show, id: @thermometer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermometer
    assert_response :success
  end

  test "should update thermometer_mailer" do
    patch :update, id: @thermometer, thermometer_mailer: { temperature: @thermometer.temperature }
    assert_redirected_to thermometer_path(assigns(:thermometer_mailer))
  end

  test "should destroy thermometer_mailer" do
    assert_difference('Thermometer.count', -1) do
      delete :destroy, id: @thermometer
    end

    assert_redirected_to thermometers_path
  end
end
