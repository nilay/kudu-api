class CreateRequestOtps < ActiveRecord::Migration[5.0]
  def change
    create_table :request_otps do |t|
t.string :phone_number
t.string :otp
t.string :origin_ip
      t.timestamps
    end
  end
end
