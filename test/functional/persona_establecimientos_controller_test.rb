require 'test_helper'

class PersonaEstablecimientosControllerTest < ActionController::TestCase
  setup do
    @persona_establecimiento = persona_establecimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persona_establecimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona_establecimiento" do
    assert_difference('PersonaEstablecimiento.count') do
      post :create, persona_establecimiento: { establecimiento_id: @persona_establecimiento.establecimiento_id, persona_id: @persona_establecimiento.persona_id }
    end

    assert_redirected_to persona_establecimiento_path(assigns(:persona_establecimiento))
  end

  test "should show persona_establecimiento" do
    get :show, id: @persona_establecimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona_establecimiento
    assert_response :success
  end

  test "should update persona_establecimiento" do
    put :update, id: @persona_establecimiento, persona_establecimiento: { establecimiento_id: @persona_establecimiento.establecimiento_id, persona_id: @persona_establecimiento.persona_id }
    assert_redirected_to persona_establecimiento_path(assigns(:persona_establecimiento))
  end

  test "should destroy persona_establecimiento" do
    assert_difference('PersonaEstablecimiento.count', -1) do
      delete :destroy, id: @persona_establecimiento
    end

    assert_redirected_to persona_establecimientos_path
  end
end
