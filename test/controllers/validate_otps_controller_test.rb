require 'test_helper'

class ValidateOtpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @validate_otp = validate_otps(:one)
  end

  test "should get index" do
    get validate_otps_url, as: :json
    assert_response :success
  end

  test "should create validate_otp" do
    assert_difference('ValidateOtp.count') do
      post validate_otps_url, params: { validate_otp: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show validate_otp" do
    get validate_otp_url(@validate_otp), as: :json
    assert_response :success
  end

  test "should update validate_otp" do
    patch validate_otp_url(@validate_otp), params: { validate_otp: {  } }, as: :json
    assert_response 200
  end

  test "should destroy validate_otp" do
    assert_difference('ValidateOtp.count', -1) do
      delete validate_otp_url(@validate_otp), as: :json
    end

    assert_response 204
  end
end
