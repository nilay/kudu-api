class V1::OtpController < V1::ApplicationController


  # POST /request_otps
  def create
    @otp = Otp.new(otp_params)
    if @otp.save
      render json: {success: true, message: 'Otp sent successfully'}, status: :created
    else
      render json: @otp.errors, status: :unprocessable_entity
    end
  end

  private
  def otp_params
    params.require(:otp).permit  :phone_number
  end
end
