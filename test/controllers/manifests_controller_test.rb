require 'test_helper'

class ManifestsControllerTest < ActionController::TestCase
  setup do
    @manifest = manifests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manifests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manifest" do
    assert_difference('Manifest.count') do
      post :create, manifest: { bo_aircraft: @manifest.bo_aircraft, bo_charges: @manifest.bo_charges, bo_debits: @manifest.bo_debits, bo_gear_rental: @manifest.bo_gear_rental, bo_id: @manifest.bo_id, bo_jump_type: @manifest.bo_jump_type, bo_load_num: @manifest.bo_load_num, bo_pilot: @manifest.bo_pilot, bo_rental_rig_number: @manifest.bo_rental_rig_number, password_digest: @manifest.password_digest }
    end

    assert_redirected_to manifest_path(assigns(:manifest))
  end

  test "should show manifest" do
    get :show, id: @manifest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manifest
    assert_response :success
  end

  test "should update manifest" do
    patch :update, id: @manifest, manifest: { bo_aircraft: @manifest.bo_aircraft, bo_charges: @manifest.bo_charges, bo_debits: @manifest.bo_debits, bo_gear_rental: @manifest.bo_gear_rental, bo_id: @manifest.bo_id, bo_jump_type: @manifest.bo_jump_type, bo_load_num: @manifest.bo_load_num, bo_pilot: @manifest.bo_pilot, bo_rental_rig_number: @manifest.bo_rental_rig_number, password_digest: @manifest.password_digest }
    assert_redirected_to manifest_path(assigns(:manifest))
  end

  test "should destroy manifest" do
    assert_difference('Manifest.count', -1) do
      delete :destroy, id: @manifest
    end

    assert_redirected_to manifests_path
  end
end
