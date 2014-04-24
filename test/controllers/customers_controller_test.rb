require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { cust_addr: @customer.cust_addr, cust_cc: @customer.cust_cc, cust_city: @customer.cust_city, cust_dl: @customer.cust_dl, cust_dl_exp: @customer.cust_dl_exp, cust_dl_state: @customer.cust_dl_state, cust_em_contact: @customer.cust_em_contact, cust_em_contactphone: @customer.cust_em_contactphone, cust_em_contactrel: @customer.cust_em_contactrel, cust_email: @customer.cust_email, cust_fname: @customer.cust_fname, cust_id: @customer.cust_id, cust_lname: @customer.cust_lname, cust_mi: @customer.cust_mi, cust_phone: @customer.cust_phone, cust_reserve_date: @customer.cust_reserve_date, cust_status: @customer.cust_status, cust_uspa: @customer.cust_uspa, cust_uspa_exp: @customer.cust_uspa_exp, cust_uspalicense: @customer.cust_uspalicense, cust_waiver_date: @customer.cust_waiver_date, cust_zip: @customer.cust_zip, password_digest: @customer.password_digest, username: @customer.username }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { cust_addr: @customer.cust_addr, cust_cc: @customer.cust_cc, cust_city: @customer.cust_city, cust_dl: @customer.cust_dl, cust_dl_exp: @customer.cust_dl_exp, cust_dl_state: @customer.cust_dl_state, cust_em_contact: @customer.cust_em_contact, cust_em_contactphone: @customer.cust_em_contactphone, cust_em_contactrel: @customer.cust_em_contactrel, cust_email: @customer.cust_email, cust_fname: @customer.cust_fname, cust_id: @customer.cust_id, cust_lname: @customer.cust_lname, cust_mi: @customer.cust_mi, cust_phone: @customer.cust_phone, cust_reserve_date: @customer.cust_reserve_date, cust_status: @customer.cust_status, cust_uspa: @customer.cust_uspa, cust_uspa_exp: @customer.cust_uspa_exp, cust_uspalicense: @customer.cust_uspalicense, cust_waiver_date: @customer.cust_waiver_date, cust_zip: @customer.cust_zip, password_digest: @customer.password_digest, username: @customer.username }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
