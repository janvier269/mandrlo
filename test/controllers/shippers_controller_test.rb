require 'test_helper'

class ShippersControllerTest < ActionController::TestCase
  setup do
    @shipper = shippers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shippers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipper" do
    assert_difference('Shipper.count') do
      post :create, shipper: { add2: @shipper.add2, addr1: @shipper.addr1, altitud: @shipper.altitud, area: @shipper.area, city: @shipper.city, email: @shipper.email, friday: @shipper.friday, inventory: @shipper.inventory, long: @shipper.long, monday: @shipper.monday, oth_aes: @shipper.oth_aes, oth_brok: @shipper.oth_brok, oth_impo: @shipper.oth_impo, oth_ins: @shipper.oth_ins, oth_pur: @shipper.oth_pur, oth_repa: @shipper.oth_repa, oth_ware: @shipper.oth_ware, other: @shipper.other, pay_cash: @shipper.pay_cash, pay_chk: @shipper.pay_chk, pay_debCrd: @shipper.pay_debCrd, paypal: @shipper.paypal, pers1: @shipper.pers1, pers2: @shipper.pers2, phon1: @shipper.phon1, phon2: @shipper.phon2, saturday: @shipper.saturday, services_id: @shipper.services_id, shipco: @shipper.shipco, thursday: @shipper.thursday, tuesday: @shipper.tuesday, wednesday: @shipper.wednesday, zip: @shipper.zip }
    end

    assert_redirected_to shipper_path(assigns(:shipper))
  end

  test "should show shipper" do
    get :show, id: @shipper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipper
    assert_response :success
  end

  test "should update shipper" do
    patch :update, id: @shipper, shipper: { add2: @shipper.add2, addr1: @shipper.addr1, altitud: @shipper.altitud, area: @shipper.area, city: @shipper.city, email: @shipper.email, friday: @shipper.friday, inventory: @shipper.inventory, long: @shipper.long, monday: @shipper.monday, oth_aes: @shipper.oth_aes, oth_brok: @shipper.oth_brok, oth_impo: @shipper.oth_impo, oth_ins: @shipper.oth_ins, oth_pur: @shipper.oth_pur, oth_repa: @shipper.oth_repa, oth_ware: @shipper.oth_ware, other: @shipper.other, pay_cash: @shipper.pay_cash, pay_chk: @shipper.pay_chk, pay_debCrd: @shipper.pay_debCrd, paypal: @shipper.paypal, pers1: @shipper.pers1, pers2: @shipper.pers2, phon1: @shipper.phon1, phon2: @shipper.phon2, saturday: @shipper.saturday, services_id: @shipper.services_id, shipco: @shipper.shipco, thursday: @shipper.thursday, tuesday: @shipper.tuesday, wednesday: @shipper.wednesday, zip: @shipper.zip }
    assert_redirected_to shipper_path(assigns(:shipper))
  end

  test "should destroy shipper" do
    assert_difference('Shipper.count', -1) do
      delete :destroy, id: @shipper
    end

    assert_redirected_to shippers_path
  end
end
