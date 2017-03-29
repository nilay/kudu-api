class ValidateOtpsController < RequestOtpsController
  
  before_action :set_validate_otp, only: [:show, :update, :destroy]

  # GET /validate_otps
  def index
    @validate_otps = ValidateOtp.all

    render json: @validate_otps
  end

  # GET /validate_otps/1
  def show
    render json: @validate_otp
 
  end

  # POST /validate_otps
  def create
   
    @validate_otp = RequestOtp.new(validate_otp_params)
     @otp = RequestOtp.find(params[:otp])
if @otp == @validate_otp
      true
      else
        false
      end
   if @validate_otp.save
      render json: @validate_otp, status: :created, location: @validate_otp
    else
      render json: @validate_otp.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /validate_otps/1
  def update
    if @validate_otp.update(validate_otp_params)
      render json: @validate_otp
    else
      render json: @validate_otp.errors, status: :unprocessable_entity
    end
  end

  # DELETE /validate_otps/1
  def destroy
    @validate_otp.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validate_otp
      @request_otp = RequestOtp.find(params[:id])


    end

    # Only allow a trusted parameter "white list" through.
    def validate_otp_params
    
      params.require(:validate_otp).permit(:phone_number, :otp)
    end
end
