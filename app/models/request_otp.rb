class RequestOtp < ApplicationRecord

before_create :generate_otp


	def generate_otp
  self.otp = rand(00000..99999).to_s.rjust(5, "0")
 

end

end

