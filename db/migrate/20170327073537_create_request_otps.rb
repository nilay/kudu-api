class CreateRequestOtps < ActiveRecord::Migration[5.0]
  def change
    create_table :otps do |t|
      t.string :phone_number, index: true
      t.string :otp
      t.string :origin_ip
      t.boolean :otp_sent, default: false
      t.text :twillio_response

      t.timestamps
    end
  end
end
