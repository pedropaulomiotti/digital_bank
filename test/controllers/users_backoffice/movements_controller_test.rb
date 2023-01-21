require 'test_helper'

class UsersBackoffice::MovementsControllerTest < ActionDispatch::IntegrationTest
  test "should get deposit" do
    get users_backoffice_movements_deposit_url
    assert_response :success
  end

  test "should get withdraw" do
    get users_backoffice_movements_withdraw_url
    assert_response :success
  end

  test "should get transfer" do
    get users_backoffice_movements_transfer_url
    assert_response :success
  end

  test "should get movement" do
    get users_backoffice_movements_movement_url
    assert_response :success
  end

end
