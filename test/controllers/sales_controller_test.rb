require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { SaleType: @sale.SaleType, Sale_price: @sale.Sale_price, bo_load_num: @sale.bo_load_num, cust_id: @sale.cust_id, gear_rental: @sale.gear_rental, sale_date: @sale.sale_date }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    patch :update, id: @sale, sale: { SaleType: @sale.SaleType, Sale_price: @sale.Sale_price, bo_load_num: @sale.bo_load_num, cust_id: @sale.cust_id, gear_rental: @sale.gear_rental, sale_date: @sale.sale_date }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
