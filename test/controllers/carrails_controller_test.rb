require 'test_helper'

class CarrailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrail = carrails(:one)
  end

  test "should get index" do
    get carrails_url
    assert_response :success
  end

  test "should get new" do
    get new_carrail_url
    assert_response :success
  end

  test "should create carrail" do
    assert_difference('Carrail.count') do
      post carrails_url, params: { carrail: { car: @carrail.car, generate: @carrail.generate, make: @carrail.make, model: @carrail.model, scaffold: @carrail.scaffold, year: @carrail.year } }
    end

    assert_redirected_to carrail_url(Carrail.last)
  end

  test "should show carrail" do
    get carrail_url(@carrail)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrail_url(@carrail)
    assert_response :success
  end

  test "should update carrail" do
    patch carrail_url(@carrail), params: { carrail: { car: @carrail.car, generate: @carrail.generate, make: @carrail.make, model: @carrail.model, scaffold: @carrail.scaffold, year: @carrail.year } }
    assert_redirected_to carrail_url(@carrail)
  end

  test "should destroy carrail" do
    assert_difference('Carrail.count', -1) do
      delete carrail_url(@carrail)
    end

    assert_redirected_to carrails_url
  end
end
