class Otp < ApplicationRecord

  before_create :generate_otp


	def generate_otp
    self.otp = rand(10000..99999)
  end

end

