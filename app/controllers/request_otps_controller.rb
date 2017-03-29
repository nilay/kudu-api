class RequestOtpsController < ApplicationController
  before_action :set_request_otp, only: [:show, :update, :destroy]

  # GET /request_otps
  def index
    @request_otps = RequestOtp.all

    render json: @request_otps
  end

  # GET /request_otps/1
  def show
    render json: @request_otp
  end

  # POST /request_otps
  def create
    @request_otp = RequestOtp.new(request_otp_params)
        


    if @request_otp.save
      render json: @request_otp, status: :created, location: @request_otp
    else
      render json: @request_otp.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /request_otps/1
  def update
    if @request_otp.update(request_otp_params)
      render json: @request_otp
    else
      render json: @request_otp.errors, status: :unprocessable_entity
    end
  end

  # DELETE /request_otps/1
  def destroy
    @request_otp.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_otp
      @request_otp = RequestOtp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_otp_params
      params.require(:request_otp).permit(:phone_number)
    end
end
