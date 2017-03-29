class V1::VerifyOtpController < V1::ApplicationController


  # POST /request_otps
  def create
    if Otp.where(phone_number: params[:otp][:phone_number], otp: params[:otp][:otp]).take
      render json: {success: true, message: 'Otp matched'}
    else
      render json: {success: false, message: 'Otp did not match'}
    end

  end

end
