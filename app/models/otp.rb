class Otp < ApplicationRecord

  	before_create :generate_otp
  	before_create :send_message

  	def generate_otp
  		self.otp = rand(10000..99999)
  	end

  	def send_message()
		require 'rubygems' # not necessary with ruby 1.9 but included for completeness
		require 'twilio-ruby' # put your own credentials here

		account_sid = 'AC760c07f0a4a24b3e6b19bb82876a76ab'
		auth_token = '80a6fa6ea5b121ef20dc0ae9fb3bdc69'

 		#set up a client to talk to the Twilio REST API
		@client = Twilio::REST::Client.new account_sid, auth_token

		@client.account.messages.create({
  			:from => '+14692087138',
  			:to => phone_number, 
  			:body => "Your otp is : #{otp}",
		})

  	end
end




















