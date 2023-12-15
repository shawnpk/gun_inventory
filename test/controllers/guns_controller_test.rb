require "test_helper"

class GunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gun = guns(:one)
  end

  test "should get index" do
    get guns_url
    assert_response :success
  end

  test "should get new" do
    get new_gun_url
    assert_response :success
  end

  test "should create gun" do
    assert_difference("Gun.count") do
      post guns_url, params: { gun: { ammunition_type: @gun.ammunition_type, make: @gun.make, model: @gun.model, name: @gun.name, production_year: @gun.production_year, purchase_date: @gun.purchase_date, purchase_location: @gun.purchase_location, purchase_price: @gun.purchase_price, serial_number: @gun.serial_number, url: @gun.url } }
    end

    assert_redirected_to gun_url(Gun.last)
  end

  test "should show gun" do
    get gun_url(@gun)
    assert_response :success
  end

  test "should get edit" do
    get edit_gun_url(@gun)
    assert_response :success
  end

  test "should update gun" do
    patch gun_url(@gun), params: { gun: { ammunition_type: @gun.ammunition_type, make: @gun.make, model: @gun.model, name: @gun.name, production_year: @gun.production_year, purchase_date: @gun.purchase_date, purchase_location: @gun.purchase_location, purchase_price: @gun.purchase_price, serial_number: @gun.serial_number, url: @gun.url } }
    assert_redirected_to gun_url(@gun)
  end

  test "should destroy gun" do
    assert_difference("Gun.count", -1) do
      delete gun_url(@gun)
    end

    assert_redirected_to guns_url
  end
end
