require "application_system_test_case"

class GunsTest < ApplicationSystemTestCase
  setup do
    @gun = guns(:one)
  end

  test "visiting the index" do
    visit guns_url
    assert_selector "h1", text: "Guns"
  end

  test "should create gun" do
    visit guns_url
    click_on "New gun"

    fill_in "Ammunition type", with: @gun.ammunition_type
    fill_in "Make", with: @gun.make
    fill_in "Model", with: @gun.model
    fill_in "Name", with: @gun.name
    fill_in "Production year", with: @gun.production_year
    fill_in "Purchase date", with: @gun.purchase_date
    fill_in "Purchase location", with: @gun.purchase_location
    fill_in "Purchase price", with: @gun.purchase_price
    fill_in "Serial number", with: @gun.serial_number
    fill_in "Url", with: @gun.url
    click_on "Create Gun"

    assert_text "Gun was successfully created"
    click_on "Back"
  end

  test "should update Gun" do
    visit gun_url(@gun)
    click_on "Edit this gun", match: :first

    fill_in "Ammunition type", with: @gun.ammunition_type
    fill_in "Make", with: @gun.make
    fill_in "Model", with: @gun.model
    fill_in "Name", with: @gun.name
    fill_in "Production year", with: @gun.production_year
    fill_in "Purchase date", with: @gun.purchase_date
    fill_in "Purchase location", with: @gun.purchase_location
    fill_in "Purchase price", with: @gun.purchase_price
    fill_in "Serial number", with: @gun.serial_number
    fill_in "Url", with: @gun.url
    click_on "Update Gun"

    assert_text "Gun was successfully updated"
    click_on "Back"
  end

  test "should destroy Gun" do
    visit gun_url(@gun)
    click_on "Destroy this gun", match: :first

    assert_text "Gun was successfully destroyed"
  end
end
