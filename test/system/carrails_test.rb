require "application_system_test_case"

class CarrailsTest < ApplicationSystemTestCase
  setup do
    @carrail = carrails(:one)
  end

  test "visiting the index" do
    visit carrails_url
    assert_selector "h1", text: "Carrails"
  end

  test "creating a Carrail" do
    visit carrails_url
    click_on "New Carrail"

    fill_in "Car", with: @carrail.car
    fill_in "Generate", with: @carrail.generate
    fill_in "Make", with: @carrail.make
    fill_in "Model", with: @carrail.model
    fill_in "Scaffold", with: @carrail.scaffold
    fill_in "Year", with: @carrail.year
    click_on "Create Carrail"

    assert_text "Carrail was successfully created"
    click_on "Back"
  end

  test "updating a Carrail" do
    visit carrails_url
    click_on "Edit", match: :first

    fill_in "Car", with: @carrail.car
    fill_in "Generate", with: @carrail.generate
    fill_in "Make", with: @carrail.make
    fill_in "Model", with: @carrail.model
    fill_in "Scaffold", with: @carrail.scaffold
    fill_in "Year", with: @carrail.year
    click_on "Update Carrail"

    assert_text "Carrail was successfully updated"
    click_on "Back"
  end

  test "destroying a Carrail" do
    visit carrails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carrail was successfully destroyed"
  end
end
