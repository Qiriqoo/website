class InboxController < ApplicationController
  include Mandrill::Rails::WebHookProcessor

  def handle_inbound(event_payload)
    response = Response.new
    payload = event_payload['msg']

    response.email = payload['email']
    response.text = payload['html']
    response.save!
  end
end