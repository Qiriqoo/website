class Response < ActiveRecord::Base

  after_create :send_response

  def send_response
    ContactMailer.response(self).deliver
  end
end
