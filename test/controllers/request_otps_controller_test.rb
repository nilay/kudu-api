require 'test_helper'

class RequestOtpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_otp = request_otps(:one)
  end

  test "should get index" do
    get request_otps_url, as: :json
    assert_response :success
  end

  test "should create request_otp" do
    assert_difference('Otp.count') do
      post request_otps_url, params: { request_otp: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show request_otp" do
    get request_otp_url(@request_otp), as: :json
    assert_response :success
  end

  test "should update request_otp" do
    patch request_otp_url(@request_otp), params: { request_otp: {  } }, as: :json
    assert_response 200
  end

  test "should destroy request_otp" do
    assert_difference('Otp.count', -1) do
      delete request_otp_url(@request_otp), as: :json
    end

    assert_response 204
  end
end
